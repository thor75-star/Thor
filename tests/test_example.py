"""Example tests."""

import sys
from pathlib import Path

# Add src to path
sys.path.insert(0, str(Path(__file__).parent.parent / "src"))


def test_example():
    """Example test case."""
    assert 1 + 1 == 2


def test_another():
    """Another test case."""
    result = "Thor"
    assert result == "Thor"
