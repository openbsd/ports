# $OpenBSD: Makefile,v 1.17 2007/09/15 20:59:38 merdely Exp $
# $FreeBSD: Makefile,v 1.4 1998/01/17 17:25:46 jfieber Exp $

COMMENT=	Linuxdoc SGML DTD

DISTNAME=	linuxdoc-1.1
CATEGORIES=	textproc

MASTER_SITES=	ftp://fallout.campusview.indiana.edu/pub/sgml/

RUN_DEPENDS=	::textproc/iso8879

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license

NO_BUILD=       Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}

FILES=	README catalog freebsd-1.0.dtd freebsd-1.1.dtd \
	linuxdoc.dec original.dtd

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/sgml/linuxdoc
	cd ${WRKSRC}; ${INSTALL_DATA} ${FILES} ${PREFIX}/share/sgml/linuxdoc
	${INSTALL_DATA} ${FILESDIR}/xfree86.dtd ${PREFIX}/share/sgml/linuxdoc

.include <bsd.port.mk>
