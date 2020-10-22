# $OpenBSD: Makefile,v 1.18 2020/10/22 12:13:39 abieber Exp $

COMMENT =	pass compatible password manager written in go

MODGO_MODNAME =	github.com/gopasspw/gopass
MODGO_VERSION =	v1.10.1

DISTNAME =	gopass-${MODGO_VERSION}

CATEGORIES =	security

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c pthread

MODULES =	lang/go
MODGO_LDFLAGS =	-X "main.version=${MODGO_VERSION}"

RUN_DEPENDS =	devel/git \
		security/gnupg>=2.2.23p1

# for tests; some still fail
PORTHOME =	${WRKDIR}

do-build:
	cd ${WRKSRC} && \
		${MODGO_BUILD_CMD} ${ALL_TARGET} ; \
		${MODGO_BUILD_CMD} ${ALL_TARGET}/cmd/... ;

MODGO_MODULES =	\
	cloud.google.com/go					 v0.26.0 \
	filippo.io/age						 v1.0.0-beta4 \
	github.com/!burnt!sushi/toml				 v0.3.1 \
	github.com/alecthomas/binary				 v0.0.0-20190922233330-fb1b1d9c299c \
	github.com/atotto/clipboard				 v0.1.2 \
	github.com/blang/semver					 v0.0.0-20190414182527-1a9109f8c4a1 \
	github.com/caspr-io/yamlpath				 v0.0.0-20200722075116-502e8d113a9b \
	github.com/cenkalti/backoff				 v2.2.1+incompatible \
	github.com/census-instrumentation/opencensus-proto	 v0.2.1 \
	github.com/chzyer/logex					 v1.1.10 \
	github.com/chzyer/readline				 v0.0.0-20180603132655-2972be24d48e \
	github.com/chzyer/test					 v0.0.0-20180213035817-a1ea475d72b1 \
	github.com/client9/misspell				 v0.3.4 \
	github.com/cpuguy83/go-md2man/v2			 v2.0.0 \
	github.com/creack/pty					 v1.1.9 \
	github.com/davecgh/go-spew				 v1.1.1 \
	github.com/dominikschulz/github-releases		 v0.0.3 \
	github.com/dustin/go-humanize				 v1.0.0 \
	github.com/envoyproxy/go-control-plane			 v0.9.1-0.20191026205805-5f8ba28d4473 \
	github.com/envoyproxy/protoc-gen-validate		 v0.1.0 \
	github.com/fatih/color					 v1.9.0 \
	github.com/godbus/dbus					 v0.0.0-20190623212516-8a1682060722 \
	github.com/gokyle/twofactor				 v1.0.1 \
	github.com/golang/glog					 v0.0.0-20160126235308-23def4e6c14b \
	github.com/golang/mock					 v1.1.1 \
	github.com/golang/protobuf				 v1.4.2 \
	github.com/google/go-cmp				 v0.5.1 \
	github.com/google/go-github				 v17.0.0+incompatible \
	github.com/google/go-querystring			 v1.0.0 \
	github.com/google/gofuzz				 v1.0.0 \
	github.com/gopherjs/gopherjs				 v0.0.0-20181017120253-0766667cb4d1 \
	github.com/hashicorp/errwrap				 v1.0.0 \
	github.com/hashicorp/go-multierror			 v1.1.0 \
	github.com/hashicorp/golang-lru				 v0.5.4 \
	github.com/jsimonetti/pwscheme				 v0.0.0-20160922125227-76804708ecad \
	github.com/json-iterator/go				 v1.1.10 \
	github.com/jtolds/gls					 v4.20.0+incompatible \
	github.com/kballard/go-shellquote			 v0.0.0-20180428030007-95032a82bc51 \
	github.com/klauspost/cpuid				 v1.3.1 \
	github.com/konsorten/go-windows-terminal-sequences	 v1.0.1 \
	github.com/kr/pretty					 v0.1.0 \
	github.com/kr/pty					 v1.1.1 \
	github.com/kr/text					 v0.2.0 \
	github.com/martinhoefling/goxkcdpwgen			 v0.0.0-20190331205820-7dc3d102eca3 \
	github.com/mattn/go-colorable				 v0.1.7 \
	github.com/mattn/go-isatty				 v0.0.12 \
	github.com/minio/md5-simd				 v1.1.0 \
	github.com/minio/minio-go/v6				 v6.0.57 \
	github.com/minio/sha256-simd				 v0.1.1 \
	github.com/mitchellh/go-homedir				 v1.1.0 \
	github.com/mitchellh/go-ps				 v1.0.0 \
	github.com/modern-go/concurrent				 v0.0.0-20180306012644-bacd9c7ef1dd \
	github.com/modern-go/reflect2				 v1.0.1 \
	github.com/muesli/crunchy				 v0.4.0 \
	github.com/nbutton23/zxcvbn-go				 v0.0.0-20180912185939-ae427f1e4c1d \
	github.com/niemeyer/pretty				 v0.0.0-20200227124842-a10e7caefd8e \
	github.com/pkg/errors					 v0.9.1 \
	github.com/pmezard/go-difflib				 v1.0.0 \
	github.com/prometheus/client_model			 v0.0.0-20190812154241-14fe0d1b01d4 \
	github.com/russross/blackfriday/v2			 v2.0.1 \
	github.com/schollz/closestmatch				 v0.0.0-20190308193919-1fbe626be92e \
	github.com/sergi/go-diff				 v1.1.0 \
	github.com/shurcoo!l/sanitized_anchor_name		 v1.0.0 \
	github.com/sirupsen/logrus				 v1.5.0 \
	github.com/skip2/go-qrcode				 v0.0.0-20200617195104-da1b6568686e \
	github.com/smartystreets/assertions			 v1.0.0 \
	github.com/smartystreets/goconvey			 v1.6.4 \
	github.com/spf13/pflag					 v1.0.3 \
	github.com/stretchr/objx				 v0.1.0 \
	github.com/stretchr/testify				 v1.6.1 \
	github.com/urfave/cli/v2				 v2.2.0 \
	github.com/xrash/smetrics				 v0.0.0-20200730060457-89a2a8a1fb0b \
	golang.org/x/crypto					 v0.0.0-20200728195943-123391ffb6de \
	golang.org/x/exp					 v0.0.0-20190121172915-509febef88a4 \
	golang.org/x/lint					 v0.0.0-20190313153728-d0100b6bd8b3 \
	golang.org/x/net					 v0.0.0-20200707034311-ab3426394381 \
	golang.org/x/oauth2					 v0.0.0-20180821212333-d2e6202438be \
	golang.org/x/sync					 v0.0.0-20190423024810-112230192c58 \
	golang.org/x/sys					 v0.0.0-20200808120158-1030fc2bf1d9 \
	golang.org/x/text					 v0.3.3 \
	golang.org/x/tools					 v0.0.0-20190624222133-a101b041ded4 \
	golang.org/x/xerrors					 v0.0.0-20200804184101-5ec99f83aff1 \
	google.golang.org/appengine				 v1.4.0 \
	google.golang.org/genproto				 v0.0.0-20200526211855-cb27e3aa2013 \
	google.golang.org/grpc					 v1.27.0 \
	google.golang.org/protobuf				 v1.25.0 \
	gopkg.in/check.v1					 v1.0.0-20200227125254-8fa46927fb4f \
	gopkg.in/ini.v1						 v1.57.0 \
	gopkg.in/yaml.v2					 v2.3.0 \
	gopkg.in/yaml.v3					 v3.0.0-20200615113413-eeeca48fe776 \
	gotest.tools						 v2.2.0+incompatible \
	gotest.tools/v3						 v3.0.2 \
	honnef.co/go/tools					 v0.0.0-20190523083050-ea95bdfd59fc \
	rsc.io/qr						 v0.2.0

MODGO_MODFILES =	\
	github.com/cpuguy83/go-md2man/v2	 v2.0.0-20190314233015-f79a8a8ca69d \
	github.com/davecgh/go-spew		 v1.1.0 \
	github.com/golang/protobuf		 v1.2.0 \
	github.com/golang/protobuf		 v1.3.2 \
	github.com/golang/protobuf		 v1.4.0 \
	github.com/golang/protobuf		 v1.4.0-rc.1 \
	github.com/golang/protobuf		 v1.4.0-rc.1.0.20200221234624-67d41d38c208 \
	github.com/golang/protobuf		 v1.4.0-rc.2 \
	github.com/golang/protobuf		 v1.4.0-rc.4.0.20200313231945-b860323f09d0 \
	github.com/golang/protobuf		 v1.4.1 \
	github.com/google/go-cmp		 v0.2.0 \
	github.com/google/go-cmp		 v0.3.0 \
	github.com/google/go-cmp		 v0.3.1 \
	github.com/google/go-cmp		 v0.4.0 \
	github.com/google/go-cmp		 v0.5.0 \
	github.com/json-iterator/go		 v1.1.9 \
	github.com/klauspost/cpuid		 v1.2.3 \
	github.com/kr/text			 v0.1.0 \
	github.com/mattn/go-colorable		 v0.1.4 \
	github.com/mattn/go-isatty		 v0.0.11 \
	github.com/mattn/go-isatty		 v0.0.8 \
	github.com/modern-go/concurrent		 v0.0.0-20180228061459-e0a39a4cb421 \
	github.com/modern-go/reflect2		 v0.0.0-20180701023420-4b7aa43c6742 \
	github.com/pkg/errors			 v0.8.1 \
	github.com/smartystreets/assertions	 v0.0.0-20180927180507-b2de0cb4f26d \
	github.com/smartystreets/goconvey	 v0.0.0-20190330032615-68dc04aab96a \
	github.com/stretchr/testify		 v1.2.2 \
	github.com/stretchr/testify		 v1.3.0 \
	github.com/stretchr/testify		 v1.4.0 \
	github.com/xrash/smetrics		 v0.0.0-20170218160415-a3153f7040e9 \
	golang.org/x/crypto			 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/crypto			 v0.0.0-20190513172903-22d7a77e9e5f \
	golang.org/x/crypto			 v0.0.0-20200323165209-0ec3e9974c59 \
	golang.org/x/crypto			 v0.0.0-20200622213623-75b288015ac9 \
	golang.org/x/lint			 v0.0.0-20181026193005-c67002cb31c3 \
	golang.org/x/lint			 v0.0.0-20190227174305-5b3e6a55c961 \
	golang.org/x/net			 v0.0.0-20180724234803-3673e40ba225 \
	golang.org/x/net			 v0.0.0-20180826012351-8a410e7b638d \
	golang.org/x/net			 v0.0.0-20190213061140-3a22650c66bd \
	golang.org/x/net			 v0.0.0-20190311183353-d8887717615a \
	golang.org/x/net			 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/net			 v0.0.0-20190522155817-f3200d17e092 \
	golang.org/x/sync			 v0.0.0-20180314180146-1d60e4601c6f \
	golang.org/x/sync			 v0.0.0-20181108010431-42b317875d0f \
	golang.org/x/sys			 v0.0.0-20180830151530-49385e6e1522 \
	golang.org/x/sys			 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys			 v0.0.0-20190222072716-a9d3bda3a223 \
	golang.org/x/sys			 v0.0.0-20190412213103-97732733099d \
	golang.org/x/sys			 v0.0.0-20190422165155-953cdadca894 \
	golang.org/x/sys			 v0.0.0-20191026070338-33540a1f6037 \
	golang.org/x/sys			 v0.0.0-20200116001909-b77594299b42 \
	golang.org/x/sys			 v0.0.0-20200223170610-d5e6a3e2c0ae \
	golang.org/x/sys			 v0.0.0-20200323222414-85ca7c5b95cd \
	golang.org/x/text			 v0.3.0 \
	golang.org/x/tools			 v0.0.0-20180917221912-90fa682c2a6e \
	golang.org/x/tools			 v0.0.0-20190114222345-bf090417da8b \
	golang.org/x/tools			 v0.0.0-20190226205152-f727befe758c \
	golang.org/x/tools			 v0.0.0-20190311212946-11955173bddd \
	golang.org/x/tools			 v0.0.0-20190328211700-ab21143f2384 \
	golang.org/x/tools			 v0.0.0-20190524140312-2c0ae7006135 \
	golang.org/x/xerrors			 v0.0.0-20191204190536-9bdfabe68543 \
	google.golang.org/appengine		 v1.1.0 \
	google.golang.org/genproto		 v0.0.0-20180817151627-c66870c02cf8 \
	google.golang.org/genproto		 v0.0.0-20190819201941-24fa4b261c55 \
	google.golang.org/grpc			 v1.19.0 \
	google.golang.org/grpc			 v1.23.0 \
	google.golang.org/protobuf		 v0.0.0-20200109180630-ec00e32a8dfd \
	google.golang.org/protobuf		 v0.0.0-20200221191635-4d8936d0db64 \
	google.golang.org/protobuf		 v0.0.0-20200228230310-ab0ca4ff8a60 \
	google.golang.org/protobuf		 v1.20.1-0.20200309200217-e05f789c0967 \
	google.golang.org/protobuf		 v1.21.0 \
	google.golang.org/protobuf		 v1.22.0 \
	google.golang.org/protobuf		 v1.23.0 \
	google.golang.org/protobuf		 v1.23.1-0.20200526195155-81db48ad09cc \
	gopkg.in/check.v1			 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/check.v1			 v1.0.0-20190902080502-41f04d3bba15 \
	gopkg.in/ini.v1				 v1.42.0 \
	gopkg.in/yaml.v2			 v2.2.2 \
	gopkg.in/yaml.v2			 v2.2.4 \
	gopkg.in/yaml.v3			 v3.0.0-20200121175148-a6ecf24a6d71 \
	gopkg.in/yaml.v3			 v3.0.0-20200313102051-9f266ea9e77c \
	honnef.co/go/tools			 v0.0.0-20190102054323-c2f93a96b099

.include <bsd.port.mk>
