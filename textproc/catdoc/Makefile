# $OpenBSD: Makefile,v 1.13 2001/05/06 04:11:40 lebel Exp $

COMMENT=	"MS Word ==> ASCII or TeX, Tk viewer included"

DISTNAME=	catdoc-0.90b4
CATEGORIES=	textproc
NEED_VERSION=	1.402

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.ice.ru/pub/vitus/

RUN_DEPENDS=	wish8.0::x11/tk/8.0

CONFIGURE_STYLE=gnu dest

#do-install:
#	${INSTALL_PROGRAM} ${WRKSRC}/catdoc ${PREFIX}/bin
#	${INSTALL_SCRIPT} ${WRKSRC}/wordview ${PREFIX}/bin
#	${INSTALL_MAN} ${WRKSRC}/catdoc.1 ${PREFIX}/man/man1/catdoc.1

.include <bsd.port.mk>
