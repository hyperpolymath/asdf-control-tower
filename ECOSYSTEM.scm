;; SPDX-License-Identifier: AGPL-3.0-or-later
;; ECOSYSTEM.scm - asdf-control-tower ecosystem position

(ecosystem
  (version . "1.0.0")
  (name . "asdf-control-tower")
  (type . "coordination-hub")
  (purpose . "Central orchestration hub for hyperpolymath asdf plugin ecosystem")

  (position-in-ecosystem . "hub")

  (what-this-is
    "Central coordination point for 68+ asdf plugins"
    "Multi-forge mirroring infrastructure (GitHub → GitLab/Codeberg/Bitbucket)"
    "Documentation site generator via terrapin-ssg"
    "CI/CD workflow templates and standards"
    "Plugin health monitoring dashboard")

  (what-this-is-not
    "Not a plugin itself - manages the ecosystem"
    "Not a replacement for asdf-vm - extends it"
    "Not for end-user installation - developer infrastructure")

  (related-projects
    ;; Direct ecosystem relationships
    (("hyperpolymath/asdf-plugin-configurator" . "cli-tooling")
     ("hyperpolymath/asdf-metaiconic-plugin" . "metadata-registry")
     ("hyperpolymath/asdf-ui-plugin" . "visual-interface")
     ("hyperpolymath/asdf-ghjk" . "migration-bridge"))

    ;; 68+ managed plugins (representative sample)
    (("hyperpolymath/asdf-trivy-plugin" . "managed-plugin")
     ("hyperpolymath/asdf-grype-plugin" . "managed-plugin")
     ("hyperpolymath/asdf-age-plugin" . "managed-plugin")
     ("hyperpolymath/asdf-nickel-plugin" . "managed-plugin")
     ("hyperpolymath/asdf-casket-ssg-plugin" . "managed-plugin"))

    ;; External dependencies
    (("asdf-vm/asdf" . "parent-ecosystem")
     ("hyperpolymath/terrapin-ssg" . "documentation-tool")
     ("hyperpolymath/mustfile" . "build-tool")))

  (integration-points
    (provides
      "Instant-sync dispatch events for plugin updates"
      "Centralized CI/CD workflow templates"
      "Plugin status aggregation dashboard"
      "Multi-forge mirroring configuration")

    (consumes
      "Plugin metadata from asdf-metaiconic-plugin"
      "Build configuration from mustfile"
      "Site generation from terrapin-ssg")))
