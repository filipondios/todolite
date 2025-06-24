INSERT INTO topic (title, description, open) VALUES
 ('Fearless Rust Learning', 'Absurdly ambitious goals to master Rust without crying', 1),
 ('Borrow Checker Negotiations', 'Therapy sessions with the borrow checker', 1),
 ('Async Rust Rhapsody', 'Async/await experiments that probably won’t panic', 1),
 ('Rusty Tooling Odyssey', 'Adventures with cargo, clippy, and fmt', 1),
 ('Ferris Fan Club', 'Mascot appreciation & merch planning', 1);

INSERT INTO task (topic_id, description, due_date, priority, completed) VALUES
 (1, 'Memorize ownership rules while juggling flaming torches', '2025-06-30', 6, 0),
 (1, 'Explain lifetimes to a cat and hope it cares', '2025-07-02', 8, 0);

INSERT INTO task (topic_id, description, due_date, priority, completed) VALUES
 (2, 'Send thank-you letter to the borrow checker for saving me (again)', NULL, 4, 1),
 (2, 'Hold peace talks between mutable and immutable references', '2025-07-05', 7, 0);

INSERT INTO task (topic_id, description, due_date, priority, completed) VALUES
 (3, 'Write async function that solves world hunger — eventually', NULL, 3, 0),
 (3, 'Investigate why `await` is silently ignoring my hopes and dreams', '2025-07-08', 9, 0);

INSERT INTO task (topic_id, description, due_date, priority, completed) VALUES
 (4, 'Convince clippy that my code is abstract art, not broken', '2025-06-27', 7, 1),
 (4, 'Run `cargo fmt` and pretend it was intentional', NULL, 5, 0);

INSERT INTO task (topic_id, description, due_date, priority, completed) VALUES
 (5, 'Knit a tiny helmet for Ferris (safety first)', '2025-07-10', 4, 0),
 (5, 'Write a sea shanty about undefined behavior', NULL, 6, 0);

INSERT INTO task (topic_id, description, due_date, priority, completed) VALUES
 (NULL, 'Dream of a world where `unsafe` means “hug-tested”', NULL, 5, 0),
 (NULL, 'Compose a haiku about lifetimes — that compiles', '2025-07-12', 4, 1),
 (NULL, 'Create a PowerPoint titled “Rust Macros: Fight Me”', '2025-07-03', 8, 0);
