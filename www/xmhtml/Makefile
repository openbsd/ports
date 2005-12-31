# $OpenBSD: Makefile,v 1.9 2005/12/31 14:32:13 sturm Exp $
# $FreeBSD: ports/x11-toolkits/xmhtml/Makefile,v 1.15 2001/06/29 05:19:06 lkoeller Exp $
# Original from: Peter Hawkins <thepish@freebsd.org>

COMMENT=	"Motif widget capable of displaying HTML 3.2 conforming text"

DISTNAME=	XmHTML-1.1.7
PKGNAME=	${DISTNAME:L}p0
CATEGORIES=     www x11
SHARED_LIBS=	XmHTML	1.2
MODGNU_SHARED_LIBS=XmHTML ''

HOMEPAGE=	http://www.xs4all.nl/~ripley/XmHTML

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c ICE SM X11 Xext Xmu Xpm Xt m z

MASTER_SITES=	${HOMEPAGE}/dist/

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.2::graphics/png

NO_REGRESS=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
USE_MOTIF=	openmotif
USE_LIBTOOL=	Yes

EXMP_DIR=   ${PREFIX}/share/examples/XmHTML
DOCS_DIR=   ${PREFIX}/share/doc/XmHTML

do-install:
	${LIBTOOL} --mode=install ${INSTALL_DATA} \
		${WRKSRC}/lib/libXmHTML.la ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/XmHTML
	${INSTALL_DATA} ${WRKSRC}/include/XmHTML/*.h ${PREFIX}/include/XmHTML
	${INSTALL_DATA_DIR} ${EXMP_DIR}
	${TAR} -C ${WRKSRC} -cpf- book contrib examples | \
		${TAR} -C ${EXMP_DIR} -xpf-
	${INSTALL_DATA_DIR} ${DOCS_DIR}
	${TAR} -C ${WRKSRC}/html -cpf- . | ${TAR} -C ${DOCS_DIR} -xpf-

.include <bsd.port.mk>
