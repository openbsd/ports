# $OpenBSD: Makefile,v 1.2 2001/03/04 14:44:12 kevlo Exp $

DISTNAME=	clo++-0.3.0
CATEGORIES=	textproc
NEED_VERSION=	1.352

HOMEPAGE=	http://pmade.org/~pjones/software/clo++/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

LIB_DEPENDS=	xml2.5::textproc/libxml

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clo++
	${INSTALL_DATA} ${WRKSRC}/doc/handbook.html ${PREFIX}/share/doc/clo++

.include <bsd.port.mk>
