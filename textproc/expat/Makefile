# $OpenBSD: Makefile,v 1.27 2006/01/07 10:17:12 steven Exp $
# $FreeBSD: Makefile,v 1.2 1999/08/31 02:09:14 peter Exp $

COMMENT=	"XML 1.0 parser written in C"

DISTNAME=	expat-1.95.6
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	expat	4.0
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=expat/}

HOMEPAGE=	http://expat.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c 

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
NO_REGRESS=Yes
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/conftools
MAKE_FLAGS=	VSNFLAG='-version-info ${LIBexpat_VERSION:S/./:/}:0'

DOC=${PREFIX}/share/doc/expat
EXAMPLES=${PREFIX}/share/examples/expat

SEPARATE_BUILD=simple
post-install:
	${INSTALL_DATA_DIR} ${DOC} ${EXAMPLES}
	${INSTALL_DATA} ${WRKDIST}/doc/{reference.html,style.css,valid-xhtml10.png} ${DOC}
	${INSTALL_DATA} ${WRKDIST}/examples/{elements.c,outline.c} ${EXAMPLES}

USE_LIBTOOL=Yes
.include <bsd.port.mk>
