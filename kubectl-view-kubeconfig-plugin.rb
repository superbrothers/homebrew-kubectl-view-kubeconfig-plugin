class KubectlViewKubeconfigPlugin < Formula
  desc "kubectl plugin that show a kubeconfig to access the apiserver with a specified serviceaccount."
  homepage "https://github.com/superbrothers/kubectl-view-kubeconfig-plugin"
  version "v1.0.0"
  url "https://github.com/superbrothers/kubectl-view-kubeconfig-plugin/releases/download/#{version}/view-kubeconfig-darwin-amd64.zip"
  sha256 "a776e4460bfb92edd6bc340f9fd3358f93990ba7a83636ad28e38cc49ab55ad5"

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
