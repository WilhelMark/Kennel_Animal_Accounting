import matplotlib.pyplot as plt
import matplotlib.patches as mpatches

# Создание фигуры и оси
fig, ax = plt.subplots(figsize=(10, 6))

# Определение классов
classes = {
    "Животное": (0.5, 0.8),
    "ДомашниеЖивотные": (0.2, 0.6),
    "ВьючныеЖивотные": (0.8, 0.6),
    "Собака": (0.1, 0.4),
    "Кошка": (0.3, 0.4),
    "Хомяк": (0.5, 0.4),
    "Лошадь": (0.7, 0.4),
    "Верблюд": (0.9, 0.4),
    "Ослел": (1.1, 0.4)
}

# Рисуем классы
for class_name, (x, y) in classes.items():
    ax.add_patch(mpatches.Rectangle((x - 0.1, y - 0.05), 0.2, 0.1, fill=True, edgecolor='black', facecolor='lightblue'))
    ax.text(x, y, class_name, fontsize=10, ha='center', va='center')

# Рисуем связи между классами
connections = [
    ("Животное", "ДомашниеЖивотные"),
    ("Животное", "ВьючныеЖивотные"),
    ("ДомашниеЖивотные", "Собака"),
    ("ДомашниеЖивотные", "Кошка"),
    ("ДомашниеЖивотные", "Хомяк"),
    ("ВьючныеЖивотные", "Лошадь"),
    ("ВьючныеЖивотные", "Верблюд"),
    ("ВьючныеЖивотные", "Ослел")
]

for parent, child in connections:
    parent_pos = classes[parent]
    child_pos = classes[child]
    
    ax.plot([parent_pos[0], child_pos[0]], [parent_pos[1] - 0.05, child_pos[1] + 0.05], color='black', lw=1)

# Настройка осей
ax.set_xlim(0, 1.2)
ax.set_ylim(0, 1)
ax.axis('off')  # Скрыть оси

# Заголовок
plt.title('Диаграмма классов животных', fontsize=14)

# Показать диаграмму
plt.show()