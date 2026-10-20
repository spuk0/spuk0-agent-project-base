# AGENTS.md — Project router

This file is the source of truth for coding agents working on **{{PROJECT_NAME}}**. Read it first, then load only the documentation relevant to the task. `CLAUDE.md` is a compatibility mirror that points here.

## Where to look

- Project overview and verified commands: [`README.md`](README.md).
- Documentation index: [`docs/README.md`](docs/README.md).
- Product scope and actors: [`docs/project.md`](docs/project.md).
- Project profiles and architecture-sizing guidance: [`docs/project-profiles.md`](docs/project-profiles.md).
- Architecture and dependency boundaries: [`docs/architecture.md`](docs/architecture.md).
- Local development and configuration: [`docs/development.md`](docs/development.md).
- Feature states and acceptance criteria: [`docs/features/README.md`](docs/features/README.md).
- Active work plans: [`docs/plans/README.md`](docs/plans/README.md).
- Architectural decisions: [`docs/decisions/README.md`](docs/decisions/README.md).
- Verified user-facing behavior: [`docs/manual.md`](docs/manual.md).
- Product direction: [`docs/product-vision.md`](docs/product-vision.md). Treat roadmap content as planning, not implemented behavior.
- Generic deployment contract: [`docs/deploy.md`](docs/deploy.md). Keep real environment details private.

Private or ignored documentation may add local context, but mandatory build, architecture, testing, and contribution rules must never depend on it.

## Initializing a project from this template

- If project identity markers remain unresolved, select a profile from `docs/project-profiles.md` and run `scripts/initialize.ps1` before implementation.
- Prefer agent-led initialization: gather the minimum product context, propose a profile with reasons, execute the mechanical setup, and ask the user only about decisions that materially change business behavior or code.
- Do not assume Clean Architecture. Use the selected profile and documented complexity signals to choose the smallest architecture that preserves necessary boundaries.
- Complete `docs/checklists/new-project.md`, register the first objective and feature, and keep one active plan.
- Repository creation, branch changes, commits, remotes, pushes, and external publication remain subject to the user's authorization.

## Git and publishing

- Work normally from `development`; keep `main` stable.
- Do not invent a release process. Document CI, promotion, approvals, and whether pull requests are required before publishing.
- Never force-push, expose secrets, or publish private environment details.
- Keep commit subjects clear and concise. Do not add AI attribution unless explicitly requested.
- Treat versioned Markdown as public by default. Keep personal notes and production runbooks in ignored storage or a private repository.

## Architecture and implementation

- Follow the dependency boundaries documented in `docs/architecture.md`.
- Do not add dependencies without a concrete, documented reason.
- Do not implement roadmap features without an explicit task.
- Prefer the smallest change that satisfies verified acceptance criteria.
- Record significant, durable architectural choices under `docs/decisions/`.

## Definition of done

- Run the relevant builds, tests, linters, and audits documented by the project.
- Update every affected source-of-truth document in the same change.
- Do not mark behavior or acceptance criteria complete without repository evidence.
- Keep the working tree free from generated artifacts and secrets.
