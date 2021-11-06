# $OpenBSD: Makefile,v 1.30 2021/11/06 10:38:40 ajacoutot Exp $

COMMENT=	template rendering and notifications with Consul

MODGO_MODNAME=	github.com/hashicorp/consul-template
MODGO_VERSION=	v0.27.2
DISTNAME=	consul-template-${MODGO_VERSION}

REVISION=	0

CATEGORIES=	sysutils net

HOMEPAGE=	https://www.consul.io/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>
# MPLv2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go

TEST_DEPENDS=	sysutils/consul

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/consul-template
	cp -R ${WRKSRC}/examples/* ${FILESDIR}/default.conf \
		${PREFIX}/share/examples/consul-template
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/examples/consul-template

MODGO_MODULES =	\
	cloud.google.com/go					 v0.26.0 \
	github.com/!burnt!sushi/toml				 v0.3.1 \
	github.com/!data!dog/datadog-go				 v3.2.0+incompatible \
	github.com/alecthomas/template				 v0.0.0-20190718012654-fb15b899a751 \
	github.com/alecthomas/units				 v0.0.0-20190717042225-c3de453c63f4 \
	github.com/armon/circbuf				 v0.0.0-20150827004946-bbbad097214e \
	github.com/armon/go-metrics				 v0.3.4 \
	github.com/armon/go-radix				 v1.0.0 \
	github.com/beorn7/perks					 v1.0.1 \
	github.com/bgentry/speakeasy				 v0.1.0 \
	github.com/cespare/xxhash/v2				 v2.1.1 \
	github.com/circonus-labs/circonus-gometrics		 v2.3.1+incompatible \
	github.com/circonus-labs/circonusllhist			 v0.1.3 \
	github.com/client9/misspell				 v0.3.4 \
	github.com/davecgh/go-spew				 v1.1.1 \
	github.com/fatih/color					 v1.9.0 \
	github.com/fatih/structs				 v1.1.0 \
	github.com/frankban/quicktest				 v1.4.0 \
	github.com/go-kit/kit					 v0.9.0 \
	github.com/go-ldap/ldap					 v3.0.2+incompatible \
	github.com/go-logfmt/logfmt				 v0.4.0 \
	github.com/go-stack/stack				 v1.8.0 \
	github.com/go-test/deep					 v1.0.2-0.20181118220953-042da051cf31 \
	github.com/gogo/protobuf				 v1.1.1 \
	github.com/golang/glog					 v0.0.0-20160126235308-23def4e6c14b \
	github.com/golang/mock					 v1.1.1 \
	github.com/golang/protobuf				 v1.3.2 \
	github.com/golang/snappy				 v0.0.2 \
	github.com/google/btree					 v1.0.0 \
	github.com/google/go-cmp				 v0.4.0 \
	github.com/google/gofuzz				 v1.0.0 \
	github.com/hashicorp/consul/api				 v1.4.0 \
	github.com/hashicorp/consul/sdk				 v0.4.1-0.20200910203702-bb2b5dd871ca \
	github.com/hashicorp/errwrap				 v1.1.0 \
	github.com/hashicorp/go-cleanhttp			 v0.5.1 \
	github.com/hashicorp/go-gatedio				 v0.5.0 \
	github.com/hashicorp/go-hclog				 v0.14.1 \
	github.com/hashicorp/go-immutable-radix			 v1.3.0 \
	github.com/hashicorp/go-msgpack				 v0.5.5 \
	github.com/hashicorp/go-multierror			 v1.1.0 \
	github.com/hashicorp/go-plugin				 v1.0.1 \
	github.com/hashicorp/go-retryablehttp			 v0.6.7 \
	github.com/hashicorp/go-rootcerts			 v1.0.2 \
	github.com/hashicorp/go-sockaddr			 v1.0.2 \
	github.com/hashicorp/go-syslog				 v1.0.0 \
	github.com/hashicorp/go-uuid				 v1.0.1 \
	github.com/hashicorp/go-version				 v1.1.0 \
	github.com/hashicorp/go.net				 v0.0.1 \
	github.com/hashicorp/golang-lru				 v0.5.4 \
	github.com/hashicorp/hcl				 v1.0.0 \
	github.com/hashicorp/logutils				 v1.0.0 \
	github.com/hashicorp/mdns				 v1.0.1 \
	github.com/hashicorp/memberlist				 v0.2.2 \
	github.com/hashicorp/serf				 v0.9.4 \
	github.com/hashicorp/vault/api				 v1.0.5-0.20190730042357-746c0b111519 \
	github.com/hashicorp/vault/sdk				 v0.1.14-0.20190730042320-0dc007d98cc8 \
	github.com/hashicorp/yamux				 v0.0.0-20181012175058-2f1d1f20f75d \
	github.com/imdario/mergo				 v0.3.12 \
	github.com/json-iterator/go				 v1.1.9 \
	github.com/julienschmidt/httprouter			 v1.2.0 \
	github.com/konsorten/go-windows-terminal-sequences	 v1.0.1 \
	github.com/kr/logfmt					 v0.0.0-20140226030751-b84e30acd515 \
	github.com/kr/pretty					 v0.2.0 \
	github.com/kr/pty					 v1.1.1 \
	github.com/kr/text					 v0.1.0 \
	github.com/mattn/go-colorable				 v0.1.7 \
	github.com/mattn/go-isatty				 v0.0.12 \
	github.com/matttproud/golang_protobuf_extensions	 v1.0.1 \
	github.com/miekg/dns					 v1.1.26 \
	github.com/mitchellh/cli				 v1.1.0 \
	github.com/mitchellh/copystructure			 v1.0.0 \
	github.com/mitchellh/go-homedir				 v1.1.0 \
	github.com/mitchellh/go-testing-interface		 v1.0.0 \
	github.com/mitchellh/go-wordwrap			 v1.0.0 \
	github.com/mitchellh/gox				 v0.4.0 \
	github.com/mitchellh/hashstructure			 v1.0.0 \
	github.com/mitchellh/iochan				 v1.0.0 \
	github.com/mitchellh/mapstructure			 v1.3.3 \
	github.com/mitchellh/reflectwalk			 v1.0.0 \
	github.com/modern-go/concurrent				 v0.0.0-20180306012644-bacd9c7ef1dd \
	github.com/modern-go/reflect2				 v1.0.1 \
	github.com/mwitkow/go-conntrack				 v0.0.0-20161129095857-cc309e4a2223 \
	github.com/oklog/run					 v1.0.0 \
	github.com/pascaldekloe/goe				 v0.1.0 \
	github.com/pierrec/lz4					 v2.5.2+incompatible \
	github.com/pkg/errors					 v0.9.1 \
	github.com/pmezard/go-difflib				 v1.0.0 \
	github.com/posener/complete				 v1.2.3 \
	github.com/prometheus/client_golang			 v1.4.0 \
	github.com/prometheus/client_model			 v0.2.0 \
	github.com/prometheus/common				 v0.9.1 \
	github.com/prometheus/procfs				 v0.0.8 \
	github.com/ryanuber/columnize				 v2.1.0+incompatible \
	github.com/ryanuber/go-glob				 v1.0.0 \
	github.com/sean-/seed					 v0.0.0-20170313163322-e2103e2c3529 \
	github.com/sirupsen/logrus				 v1.4.2 \
	github.com/stretchr/objx				 v0.1.1 \
	github.com/stretchr/testify				 v1.4.0 \
	github.com/tv42/httpunix				 v0.0.0-20150427012821-b75d8614f926 \
	golang.org/x/crypto					 v0.0.0-20210817164053-32db794688a5 \
	golang.org/x/exp					 v0.0.0-20190121172915-509febef88a4 \
	golang.org/x/lint					 v0.0.0-20190313153728-d0100b6bd8b3 \
	golang.org/x/net					 v0.0.0-20210226172049-e18ecbb05110 \
	golang.org/x/oauth2					 v0.0.0-20180821212333-d2e6202438be \
	golang.org/x/sync					 v0.0.0-20190911185100-cd5d95a43a6e \
	golang.org/x/sys					 v0.0.0-20210615035016-665e8c7367d1 \
	golang.org/x/term					 v0.0.0-20201126162022-7de9c90e9dd1 \
	golang.org/x/text					 v0.3.3 \
	golang.org/x/time					 v0.0.0-20200630173020-3af7569d3a1e \
	golang.org/x/tools					 v0.0.0-20190907020128-2ca718005c18 \
	golang.org/x/xerrors					 v0.0.0-20191204190536-9bdfabe68543 \
	google.golang.org/appengine				 v1.4.0 \
	google.golang.org/genproto				 v0.0.0-20190404172233-64821d5d2107 \
	google.golang.org/grpc					 v1.22.0 \
	gopkg.in/alecthomas/kingpin.v2				 v2.2.6 \
	gopkg.in/asn1-ber.v1					 v1.0.0-20181015200546-f715ec2f112d \
	gopkg.in/check.v1					 v1.0.0-20190902080502-41f04d3bba15 \
	gopkg.in/square/go-jose.v2				 v2.5.1 \
	gopkg.in/yaml.v2					 v2.3.0 \
	honnef.co/go/tools					 v0.0.0-20190523083050-ea95bdfd59fc

MODGO_MODFILES =	\
	github.com/alecthomas/template			 v0.0.0-20160405071501-a0175ee3bccc \
	github.com/alecthomas/units			 v0.0.0-20151022065526-2efee857e7cf \
	github.com/armon/go-metrics			 v0.0.0-20180917152333-f0300d1749da \
	github.com/armon/go-radix			 v0.0.0-20180808171621-7fddfc383310 \
	github.com/beorn7/perks				 v0.0.0-20180321164747-3a771d992973 \
	github.com/beorn7/perks				 v1.0.0 \
	github.com/davecgh/go-spew			 v1.1.0 \
	github.com/fatih/color				 v1.7.0 \
	github.com/go-kit/kit				 v0.8.0 \
	github.com/go-logfmt/logfmt			 v0.3.0 \
	github.com/golang/protobuf			 v1.2.0 \
	github.com/golang/protobuf			 v1.3.1 \
	github.com/golang/snappy			 v0.0.1 \
	github.com/google/btree				 v0.0.0-20180813153112-4030bb1f1f0c \
	github.com/google/go-cmp			 v0.2.0 \
	github.com/google/go-cmp			 v0.3.0 \
	github.com/google/go-cmp			 v0.3.1 \
	github.com/hashicorp/consul/sdk			 v0.4.0 \
	github.com/hashicorp/errwrap			 v1.0.0 \
	github.com/hashicorp/go-cleanhttp		 v0.5.0 \
	github.com/hashicorp/go-hclog			 v0.0.0-20180709165350-ff2cf002a8dd \
	github.com/hashicorp/go-hclog			 v0.12.0 \
	github.com/hashicorp/go-hclog			 v0.8.0 \
	github.com/hashicorp/go-hclog			 v0.9.2 \
	github.com/hashicorp/go-immutable-radix		 v1.0.0 \
	github.com/hashicorp/go-msgpack			 v0.5.3 \
	github.com/hashicorp/go-multierror		 v1.0.0 \
	github.com/hashicorp/go-retryablehttp		 v0.5.3 \
	github.com/hashicorp/go-retryablehttp		 v0.5.4 \
	github.com/hashicorp/go-rootcerts		 v1.0.1 \
	github.com/hashicorp/go-sockaddr		 v1.0.0 \
	github.com/hashicorp/go-uuid			 v1.0.0 \
	github.com/hashicorp/golang-lru			 v0.5.0 \
	github.com/hashicorp/golang-lru			 v0.5.1 \
	github.com/hashicorp/mdns			 v1.0.0 \
	github.com/hashicorp/memberlist			 v0.1.3 \
	github.com/hashicorp/serf			 v0.8.2 \
	github.com/hashicorp/yamux			 v0.0.0-20180604194846-3520598351bb \
	github.com/json-iterator/go			 v1.1.6 \
	github.com/kr/pretty				 v0.1.0 \
	github.com/mattn/go-colorable			 v0.0.9 \
	github.com/mattn/go-colorable			 v0.1.4 \
	github.com/mattn/go-colorable			 v0.1.6 \
	github.com/mattn/go-isatty			 v0.0.10 \
	github.com/mattn/go-isatty			 v0.0.11 \
	github.com/mattn/go-isatty			 v0.0.3 \
	github.com/mattn/go-isatty			 v0.0.8 \
	github.com/miekg/dns				 v1.0.14 \
	github.com/mitchellh/cli			 v1.0.0 \
	github.com/mitchellh/go-testing-interface	 v0.0.0-20171004221916-a61a99592b77 \
	github.com/mitchellh/mapstructure		 v0.0.0-20160808181253-ca63d7c062ee \
	github.com/mitchellh/mapstructure		 v1.1.2 \
	github.com/modern-go/concurrent			 v0.0.0-20180228061459-e0a39a4cb421 \
	github.com/modern-go/reflect2			 v0.0.0-20180701023420-4b7aa43c6742 \
	github.com/pascaldekloe/goe			 v0.0.0-20180627143212-57f6aae5913c \
	github.com/pierrec/lz4				 v2.0.5+incompatible \
	github.com/pkg/errors				 v0.8.0 \
	github.com/pkg/errors				 v0.8.1 \
	github.com/posener/complete			 v1.1.1 \
	github.com/prometheus/client_golang		 v0.9.1 \
	github.com/prometheus/client_golang		 v1.0.0 \
	github.com/prometheus/client_model		 v0.0.0-20180712105110-5c3871d89910 \
	github.com/prometheus/client_model		 v0.0.0-20190129233127-fd36f4220a90 \
	github.com/prometheus/common			 v0.4.1 \
	github.com/prometheus/procfs			 v0.0.0-20181005140218-185b4288413d \
	github.com/prometheus/procfs			 v0.0.2 \
	github.com/ryanuber/columnize			 v0.0.0-20160712163229-9b3edd62028f \
	github.com/sirupsen/logrus			 v1.2.0 \
	github.com/stretchr/objx			 v0.1.0 \
	github.com/stretchr/testify			 v1.2.2 \
	github.com/stretchr/testify			 v1.3.0 \
	golang.org/x/crypto				 v0.0.0-20180904163835-0709b304e793 \
	golang.org/x/crypto				 v0.0.0-20181029021203-45a5f77698d3 \
	golang.org/x/crypto				 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/crypto				 v0.0.0-20190923035154-9ee001bba392 \
	golang.org/x/lint				 v0.0.0-20181026193005-c67002cb31c3 \
	golang.org/x/lint				 v0.0.0-20190227174305-5b3e6a55c961 \
	golang.org/x/net				 v0.0.0-20180724234803-3673e40ba225 \
	golang.org/x/net				 v0.0.0-20180826012351-8a410e7b638d \
	golang.org/x/net				 v0.0.0-20181023162649-9b4f9f5ad519 \
	golang.org/x/net				 v0.0.0-20181114220301-adae6a3d119a \
	golang.org/x/net				 v0.0.0-20181201002055-351d144fa1fc \
	golang.org/x/net				 v0.0.0-20190213061140-3a22650c66bd \
	golang.org/x/net				 v0.0.0-20190311183353-d8887717615a \
	golang.org/x/net				 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/net				 v0.0.0-20190613194153-d28f0bde5980 \
	golang.org/x/net				 v0.0.0-20190620200207-3b0461eec859 \
	golang.org/x/net				 v0.0.0-20190923162816-aa69164e4478 \
	golang.org/x/sync				 v0.0.0-20180314180146-1d60e4601c6f \
	golang.org/x/sync				 v0.0.0-20181108010431-42b317875d0f \
	golang.org/x/sync				 v0.0.0-20181221193216-37e7f081c4d4 \
	golang.org/x/sync				 v0.0.0-20190227155943-e225da77a7e6 \
	golang.org/x/sync				 v0.0.0-20190423024810-112230192c58 \
	golang.org/x/sys				 v0.0.0-20180823144017-11551d06cbcc \
	golang.org/x/sys				 v0.0.0-20180830151530-49385e6e1522 \
	golang.org/x/sys				 v0.0.0-20180905080454-ebe1bf3edb33 \
	golang.org/x/sys				 v0.0.0-20181026203630-95b1ffbd15a5 \
	golang.org/x/sys				 v0.0.0-20181116152217-5ac8a444bdc5 \
	golang.org/x/sys				 v0.0.0-20190129075346-302c3dd5f1cc \
	golang.org/x/sys				 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys				 v0.0.0-20190222072716-a9d3bda3a223 \
	golang.org/x/sys				 v0.0.0-20190403152447-81d4e9dc473e \
	golang.org/x/sys				 v0.0.0-20190422165155-953cdadca894 \
	golang.org/x/sys				 v0.0.0-20190922100055-0a153f010e69 \
	golang.org/x/sys				 v0.0.0-20190924154521-2837fb4f24fe \
	golang.org/x/sys				 v0.0.0-20191008105621-543471e840be \
	golang.org/x/sys				 v0.0.0-20191026070338-33540a1f6037 \
	golang.org/x/sys				 v0.0.0-20200116001909-b77594299b42 \
	golang.org/x/sys				 v0.0.0-20200122134326-e047566fdf82 \
	golang.org/x/sys				 v0.0.0-20200124204421-9fbb57f87de9 \
	golang.org/x/sys				 v0.0.0-20200223170610-d5e6a3e2c0ae \
	golang.org/x/sys				 v0.0.0-20201119102817-f84b799fce68 \
	golang.org/x/text				 v0.3.0 \
	golang.org/x/text				 v0.3.1-0.20181227161524-e6919f6577db \
	golang.org/x/text				 v0.3.2 \
	golang.org/x/time				 v0.0.0-20190308202827-9d24e82272b4 \
	golang.org/x/tools				 v0.0.0-20180917221912-90fa682c2a6e \
	golang.org/x/tools				 v0.0.0-20190114222345-bf090417da8b \
	golang.org/x/tools				 v0.0.0-20190226205152-f727befe758c \
	golang.org/x/tools				 v0.0.0-20190311212946-11955173bddd \
	golang.org/x/tools				 v0.0.0-20190524140312-2c0ae7006135 \
	golang.org/x/xerrors				 v0.0.0-20190717185122-a985d3407aa7 \
	google.golang.org/appengine			 v1.1.0 \
	google.golang.org/genproto			 v0.0.0-20180817151627-c66870c02cf8 \
	google.golang.org/grpc				 v1.14.0 \
	google.golang.org/grpc				 v1.19.0 \
	gopkg.in/check.v1				 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/square/go-jose.v2			 v2.3.1 \
	gopkg.in/yaml.v2				 v2.2.1 \
	gopkg.in/yaml.v2				 v2.2.2 \
	gopkg.in/yaml.v2				 v2.2.4 \
	gopkg.in/yaml.v2				 v2.2.5 \
	gopkg.in/yaml.v2				 v2.2.8 \
	honnef.co/go/tools				 v0.0.0-20190102054323-c2f93a96b099

.include <bsd.port.mk>
