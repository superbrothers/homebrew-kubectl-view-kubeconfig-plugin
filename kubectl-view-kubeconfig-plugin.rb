class KubectlViewKubeconfigPlugin < Formula
  desc "kubectl plugin that show a kubeconfig to access the apiserver with a specified serviceaccount."
  homepage "https://github.com/superbrothers/kubectl-view-kubeconfig-plugin"
  version "v1.0.1"
  url "https://github.com/superbrothers/kubectl-view-kubeconfig-plugin/releases/download/#{version}/view-kubeconfig-darwin-amd64.zip"
  sha256 "f0a3fafbf27303b0461b1a6a5b03ef290eba79089d3561c7c23f8c32abfbeb33"

  def install
    prefix.install Dir["*"]
  end

  def caveats; <<~EOS
    Run the following commands in terminal:
      mkdir -p ~/.kube/plugins && \\
      rm -rf ~/.kube/plugins/kubectl-view-kubeconfig-plugin && \\
      cp -RH $(brew --prefix kubectl-view-kubeconfig-plugin) ~/.kube/plugins/
    EOS
  end
end
