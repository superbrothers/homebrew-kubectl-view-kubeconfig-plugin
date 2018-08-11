class KubectlViewKubeconfigPlugin < Formula
  desc "kubectl plugin that show a kubeconfig to access the apiserver with a specified serviceaccount."
  homepage "https://github.com/superbrothers/kubectl-view-kubeconfig-plugin"
  version "v1.0.2"
  url "https://github.com/superbrothers/kubectl-view-kubeconfig-plugin/releases/download/#{version}/view-kubeconfig-darwin-amd64.zip"
  sha256 "06922a137ceeed2b82ceef9c86a150b3998c6552a1cd82bdcc6119b9d0868100"

  def install
    prefix.install Dir["*"]
  end

  def caveats; <<~EOS
    This plugin was renamed to "view-serviceaccount-kubeconfig", so please use "kubectl-view-serviceaccount-kubeconfig-plugin" instead.
    Note that this formula will be removed in the near future.

    Run the following commands in terminal:
      mkdir -p ~/.kube/plugins && \\
      rm -rf ~/.kube/plugins/kubectl-view-kubeconfig-plugin && \\
      cp -RH $(brew --prefix kubectl-view-kubeconfig-plugin) ~/.kube/plugins/
    EOS
  end
end
