ONLY_FOR_ARCHS= i386 amd64

V=		2.57b
COMMENT=	instrumented fuzzer
PKGNAME=	afl-$V
CATEGORIES=	devel

HOMEPAGE=	https://lcamtuf.coredump.cx/afl

# This is not the official continuation of AFL but it is currently more active.
# If lcamtuf ever releases a new version, consider switching back to it.
GH_ACCOUNT=	google
GH_PROJECT=	AFL
GH_TAGNAME=	v$V
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

USE_GMAKE=		Yes
FAKE_FLAGS=		PREFIX="${TRUEPREFIX}"
TEST_TARGET=		test_build
WANTLIB=		c

pre-configure:
	sed -i 's,%s/README,&.md,' ${WRKSRC}/afl-{tmin,showmap,fuzz,analyze}.c

.include <bsd.port.mk>
