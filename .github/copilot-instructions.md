# Copilot Instructions for The Coven Repository

## Project Overview
This repository documents **The Coven Discord server** — a themed community with structured governance, verification workflows, and crypto/trading channels. Content is primarily Markdown files that serve as Discord channel messages, rules documentation, and server configuration reference.

**Owner:** Coven Deity (covendeity)  
**Purpose:** Store and version-control Discord server resources and member-facing documentation

## Architecture & Content Patterns

### Three Content Tiers
1. **Governance Documents** (`black-laws.md`, `README.md`)
   - Server rules, structure, and admin documentation
   - Markdown with narrative tone and metaphorical language ("The Council", "Anointed", "Familiars")
   - Include Discord invite links and GitHub repo references

2. **Channel Message Templates** (`*-channel-message.md`)
   - Posted as pinned/intro messages in Discord channels
   - Format: Title (emoji prefix) + guidance + supportive closing phrase
   - **Pattern examples:**
     - `#the-altar_channel-message.md` — Welcome and general conversation guidelines
     - `#cursed-exchange_channel-message.md` — Crypto swaps and bot-enabled trading
     - `#visions-channel-message.md` — Art/photography/aesthetic content
   - **Naming convention:** `{channel-name}_channel-message.md`

3. **Supporting Assets** (`visions/` folder, images)
   - Reference materials, images, PDFs
   - Currently: Baphomet illustrations, Tarot deck references, historical texts

### Theme & Tone
- **Consistent metaphor throughout:** Occult/mystical framing (rituals, altars, curses, shadows)
- **Terminology:** Use server role names (Council, Anointed, Disciples, Awakened, Familiars)
- **Closing phrases:** Messages typically end with mystically-themed encouragement
- **Emoji usage:** Consistent with channel purpose (`:crystal_ball:`, `:scroll:`, `:new_moon:`)

## Key Conventions & Patterns

### Channel Documentation Structure
1. **Title** with descriptive emoji
2. **Bullet-point guidelines** (what to do)
3. **Cross-references** to related channels
4. **Closing sentiment** aligned with theme
5. **Never include:** Actual Discord invite/links in channel templates (reserve for governance docs)

### Verification & Access Flow
- **Wick** (bot) → `Disciples` role
- **Double Counter** (bot) → `Awakened` role  
- **Manual review** → `Anointed` role (full access)
- Reference this flow when documenting `#verify-here` and `#the-purgatory` workflows

### Bot Integration
- **Wick** & **Double Counter:** Security/verification bots
- **Swap bots:** Enable trading in `#cursed-exchange`
- **Familiars role:** All bots hold this role (never assign to humans)

## File Organization & Naming

```
/root
  README.md                                   # Server overview & getting started
  black-laws.md                               # Complete rules & channel index
  {channel-name}_channel-message.md           # Individual channel guidelines
  visions/                                    # Reference materials & assets
  .github/copilot-instructions.md            # This file
  The-Coven_Avatar.png, black-laws.png       # Imagery
  copy_to_CovenDeity_The-Coven.sh            # Deployment script
```

**When adding new channels:**
- Create `{channel-name}_channel-message.md` with consistent structure
- Update `README.md` with channel description in **Main Public Channels** section
- Update `black-laws.md` **Channel Sanctuaries** section
- Add cross-reference in related channel messages

## Development Workflows

### Editing Channel Messages
1. Edit the `{channel-name}_channel-message.md` file
2. Preview structure: ensure title, guidelines, cross-refs, closing phrase present
3. Test tone consistency against existing channels
4. Update references in `README.md` if channel purpose or naming changes

### Adding New Channels
1. Create new markdown file following naming convention
2. Add to `black-laws.md` Channel Sanctuaries list
3. Add brief description to `README.md` Main Public Channels section
4. Update `README.md` file manifest at the bottom

### Rules Updates
- Edit `black-laws.md` → automatically reflects server governance
- Maintain metaphorical language and numbered "Law" structure
- Update `README.md` **Community Roles** if new roles introduced

## No Active Development Workflows
- **No build process** — static documentation
- **No tests** — manual review of content/consistency
- **No dependencies** — plain Markdown files
- **Deployment:** Manual copy to Discord or via `copy_to_CovenDeity_The-Coven.sh`

## When to Ask for Clarification
- **New channel creation:** Confirm metaphorical name and purpose before writing guidelines
- **Tone/theme shifts:** Verify if mystical framing should be maintained for new sections
- **Cross-references:** Ensure all channel links are current before committing
- **Bot role assignments:** Clarify permission implications before documenting new bot integrations
