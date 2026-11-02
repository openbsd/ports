COMMENT =		embedded key/value database for Go

MODGO_MODNAME =		go.etcd.io/bbolt
MODGO_VERSION =		v1.5.0

DISTNAME =		bbolt-${MODGO_VERSION}
PKGNAME =		bbolt-1.5.0

CATEGORIES =		databases

HOMEPAGE =		https://go.etcd.io/bbolt

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go

MODGO_MODULES =	\
	cloud.google.com/go					 v0.110.2 \
	cloud.google.com/go/compute/metadata			 v0.3.0 \
	cloud.google.com/go/iam					 v0.13.0 \
	cloud.google.com/go/storage				 v1.29.0 \
	git.sr.ht/~sbinet/gg					 v0.3.1 \
	github.com/!google!cloud!platform/cloudsql-proxy	 v0.0.0-20190129172621-c8b1d7a94ddf \
	github.com/aclements/go-gg				 v0.0.0-20170118225347-6dbb4e4fefb0 \
	github.com/aclements/go-moremath			 v0.0.0-20210112150236-f10218a38794 \
	github.com/ajstarks/svgo				 v0.0.0-20211024235047-1546f124cd8b \
	github.com/cpuguy83/go-md2man/v2			 v2.0.6 \
	github.com/davecgh/go-spew				 v1.1.1 \
	github.com/go-fonts/liberation				 v0.2.0 \
	github.com/go-latex/latex				 v0.0.0-20210823091927-c0d11ff05a81 \
	github.com/go-pdf/fpdf					 v0.6.0 \
	github.com/go-sql-driver/mysql				 v1.4.1 \
	github.com/golang/freetype				 v0.0.0-20170609003504-e2365dfdc4a0 \
	github.com/golang/groupcache				 v0.0.0-20210331224755-41bb18bfe9da \
	github.com/golang/protobuf				 v1.5.3 \
	github.com/gonum/blas					 v0.0.0-20181208220705-f22b278b28ac \
	github.com/gonum/floats					 v0.0.0-20181209220543-c233463c7e82 \
	github.com/gonum/internal				 v0.0.0-20181124074243-f884aa714029 \
	github.com/gonum/lapack					 v0.0.0-20181123203213-e4cdc5a0bff9 \
	github.com/gonum/matrix					 v0.0.0-20181209220409-c518dec07be9 \
	github.com/google/go-cmp				 v0.6.0 \
	github.com/google/s2a-go				 v0.1.4 \
	github.com/google/safehtml				 v0.0.2 \
	github.com/google/uuid					 v1.3.0 \
	github.com/googleapis/enterprise-certificate-proxy	 v0.2.3 \
	github.com/googleapis/gax-go/v2				 v2.11.0 \
	github.com/inconshreveable/mousetrap			 v1.1.0 \
	github.com/mattn/go-sqlite3				 v1.14.14 \
	github.com/pmezard/go-difflib				 v1.0.0 \
	github.com/russross/blackfriday/v2			 v2.1.0 \
	github.com/spf13/cobra					 v1.10.2 \
	github.com/spf13/pflag					 v1.0.10 \
	github.com/stretchr/objx				 v0.5.2 \
	github.com/stretchr/testify				 v1.11.1 \
	github.com/yuin/goldmark				 v1.4.13 \
	go.etcd.io/gofail					 v0.2.0 \
	go.opencensus.io					 v0.24.0 \
	go.yaml.in/yaml/v3					 v3.0.4 \
	golang.org/x/crypto					 v0.41.0 \
	golang.org/x/exp					 v0.0.0-20250718183923-645b1fa84792 \
	golang.org/x/image					 v0.30.0 \
	golang.org/x/mod					 v0.27.0 \
	golang.org/x/net					 v0.43.0 \
	golang.org/x/oauth2					 v0.30.0 \
	golang.org/x/perf					 v0.0.0-20250813145418-2f7363a06fe1 \
	golang.org/x/sync					 v0.20.0 \
	golang.org/x/sys					 v0.45.0 \
	golang.org/x/telemetry					 v0.0.0-20250807160809-1a19826ec488 \
	golang.org/x/text					 v0.28.0 \
	golang.org/x/tools					 v0.36.0 \
	golang.org/x/xerrors					 v0.0.0-20240903120638-7835f813f4da \
	gonum.org/v1/gonum					 v0.11.0 \
	gonum.org/v1/plot					 v0.10.1 \
	google.golang.org/api					 v0.126.0 \
	google.golang.org/appengine				 v1.6.7 \
	google.golang.org/genproto				 v0.0.0-20230530153820-e85fd2cbaebc \
	google.golang.org/genproto/googleapis/api		 v0.0.0-20230530153820-e85fd2cbaebc \
	google.golang.org/genproto/googleapis/rpc		 v0.0.0-20230530153820-e85fd2cbaebc \
	google.golang.org/grpc					 v1.55.0 \
	google.golang.org/protobuf				 v1.31.0 \
	gopkg.in/check.v1					 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v3					 v3.0.1

MODGO_MODFILES =	\
	github.com/spf13/pflag		 v1.0.9 \
	github.com/stretchr/testify	 v1.9.0 \
	golang.org/x/sync		 v0.16.0 \
	golang.org/x/sys		 v0.35.0 \
	golang.org/x/tools		 v0.35.0

.include <bsd.port.mk>
