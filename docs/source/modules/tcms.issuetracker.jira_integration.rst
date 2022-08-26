tcms.issuetracker.jira\_integration module
==========================================

.. automodule:: tcms.issuetracker.jira_integration
   :members:
   :undoc-members:
   :show-inheritance:

   # -*- coding: utf-8 -*-
"""
    Helper which facilitate actual communications with JIRA.
"""
from tcms.issuetracker.base import IntegrationThread


class JiraThread(IntegrationThread):
    """
    Execute JIRA RPC code in a thread!

    Executed from the IssueTracker interface methods.

    .. important::

        For configuration options see :class:`tcms.issuetracker.types.JIRA`!
    """

def post_comment(self):
        self.rpc.add_comment(self.bug_id, self.text())
