# Конспект лекций по алгебре

> Лектор: **Игорь Борисович Жуков**.

## Гайд по использованию

### Короткая версия

[PDF тут](https://github.com/rabotaem-incorporated/algebra-conspect-1course/releases/latest), качаете и читаете

### Подробная версия

Для начала убедитесь, что знаете общие правила пользования конспектом:

1. Если до экзамена осталось больше недели, этим конспектом лучше не пользоваться.
2. Если до экзамена осталось меньше двух дней, этот конспект вам не поможет.
3. "между одной неделей и двумя днями пригодно к использованию так сказать" - @frungl

Теперь выйдите на улицу, потрогайте траву, вернитесь домой, скиньте эквивалент 30 долларов в dogecoin на мой кошелек и скачайте последний релиз [отсюда](https://github.com/rabotaem-incorporated/algebra-conspect-1course/releases/latest).

## О списке билетов

Среди релизов есть PDF с отмеченными ссылками на билеты (если я не забил их расставлять). Обратите внимание, что я человек, и могу поставить границы не правильно. А еще, что я использую предварительную версию: последнюю, которая сейчас (15.06.2023) имеется. В общем, применяйте мозг, а я пошел расставлять ссылки. 

## Contributing

> Ваш вклад очень важен для нас.

Конспект написан на [Typst](https://typst.app/). Можете сделать pull request с исправлениями, добавлениями и т.д. Все изменения будут рассмотрены (скорее всего). Typst кстати написан на Rust. Ну это так, между делом. Просто примите к сведению. 

~~А еще он собирается через версию typst которую мы [немного модифицировали](https://github.com/rabotaem-incorporated/opinionated-typst), если что-то собирается в CI не так (кроме, из самого явного, знаков сравнения), надо смотреть туда.~~

Теперь используется oфициальная, последняя на момент релиза версия Typst (на момент написания README это 0.6.0). Релизы собираются через прикрепленный скрипт на Python.

## Как собрать?

Скачайте Typst [здесь](https://github.com/typst/typst/releases/latest) и

```bash
typst compile main.typ
```

Капец интуитивно, да?

Используйте `watch` вместо `compile` чтобы Typst следил за изменениями и перекомпилировался автоматически.

## Licensing

See [LICENSE](LICENSE).

The [commutative diagram library](https://gitlab.com/giacomogallina/typst-cd/-/tree/main/) is provided under the MIT license.
