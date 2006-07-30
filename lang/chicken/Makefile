# $OpenBSD: Makefile,v 1.3 2006/07/30 12:25:19 steven Exp $

COMMENT=	"practical and portable Scheme system"

DISTNAME=	chicken-2.41
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	chicken		0.0 \
		uchicken	0.0
CATEGORIES=	lang

HOMEPAGE=	http://www.call-with-current-continuation.org/

MAINTAINER=	Deanna Phillips <deanna@sdf.lonestar.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c m

SEPARATE_BUILD=	simple
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

# gcc 3.3.5 internal compiler error
.if ${MACHINE_ARCH} == "sparc64"
EXTRA_CFLAGS=	-O0
.endif

# benchmark runs into forever loop at low nursery sizes on some architectures
# fix this value at 128k instead of using the benchmark
MAKE_FLAGS=	NURSERY=131072 \
		EXTRA_CFLAGS=${EXTRA_CFLAGS}

DOCDIR=		${PREFIX}/share/doc/chicken
DOCS=		chicken.html ChangeLog README LICENSE

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${DOCDIR}

.include <bsd.port.mk>
