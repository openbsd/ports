# $OpenBSD: Makefile,v 1.1.1.1 2006/06/04 10:36:03 steven Exp $

COMMENT=	"scheme to C compiler, scheme interpreter"

DISTNAME=	chicken-2.3
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

DOCDIR=		${PREFIX}/share/doc/chicken
DOCS=		chicken.html ChangeLog README LICENSE

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${DOCDIR}

.include <bsd.port.mk>
