# Authoring guidelines

Chameleon follows a strict naming convention. **Selectors should be easy to understand and predictable to the end user.**

### Block composition

Structurally, blocks are composed in a similar fashion to BEM. Instead of using punctuation ( `-`, `--`, `__`) to distinguish between the segments of a selector, a strict naming convention is used.

#### `.[block][-element][-version]`

`.block` is the root level element of the component.

`.block-element` represents a descendent of `.block` that helps form `.block` as a whole.

`.block-version` represents a different version of `.block`.


### Use of language

For each segment of a given selector ensure that you are using the correct part of speech as outlined in the table.

If a more than one word is needed to describe a segment of a selector use camelCase in natural language e.g. `horizontalNav` instead of `navHorizontal`.

Usage | Part of speech | Examples
--- | --- | ---
block, element | noun | **.horizontalNav**-**item**-highlighted-on-mobile
modifier, helper | adjective* | .horizontalNav-item-**highlighted**-on-mobile, **.padded**
media state | preposition-noun | **.on-mobile**, .visibile-**on-tablet**
application state | verb-adjective | **.is-active**, **.is-previous**, .modal-**is-open**
placeholder, mixin | verb | **%insert**-loading-image, **hide()**

<small>*If no adjective is available use a noun.</small>

### Abbreviations

When writing selectors **avoid using abbreviated words** unless the meaning of the abbreviation is obvious e.g. 'nav'.

### Writing rulesets

* Sass syntax
* 2 space indented
* No vendor prefixes
* Declarations in relevance (not alphabetical) order

##### Property Ordering

1. Sass specifics
2. Position
3. Box model