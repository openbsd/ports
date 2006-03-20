# $OpenBSD: Makefile,v 1.28 2006/03/20 10:11:02 bernd Exp $
# $FreeBSD: Makefile,v 1.2 1999/08/31 02:09:14 peter Exp $

COMMENT=	"XML 1.0 parser written in C"

DISTNAME=	expat-2.0.0
SHARED_LIBS=	expat	6.0
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=expat/}

HOMEPAGE=	http://expat.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c 

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/conftools

DOC=${PREFIX}/share/doc/expat
EXAMPLES=${PREFIX}/share/examples/expat

post-install:
	${INSTALL_DATA_DIR} ${DOC} ${EXAMPLES}
	${INSTALL_DATA} ${WRKDIST}/doc/{reference.html,style.css,valid-xhtml10.png} ${DOC}
	${INSTALL_DATA} ${WRKDIST}/examples/{elements.c,outline.c} ${EXAMPLES}

pre-regress:
	@cp ${WRKSRC}/lib/expat*.h ${WRKSRC}/tests

.include <bsd.port.mk>
