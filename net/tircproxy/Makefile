# $OpenBSD: Makefile,v 1.12 2001/10/28 13:05:48 espie Exp $

BROKEN=		"requires IPF"

COMMENT=	"transparent IRC proxy"

DISTNAME=	tircproxy-0.4.5
CATEGORIES=     net
NEED_VERSION=	1.435
MASTER_SITES=	http://bre.klaki.net/programs/tircproxy/

HOMEPAGE=	http://bre.klaki.net/programs/tircproxy/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

INSTALL_TARGET=	install-strip

WRKDIST=	${WRKDIR}/tircproxy-0.4

.include <bsd.port.mk>
