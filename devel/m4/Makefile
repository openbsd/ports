# $OpenBSD: Makefile,v 1.17 2002/05/13 18:50:40 espie Exp $
# $FreeBSD: Makefile,v 1.7 1997/06/16 08:22:35 max Exp $

COMMENT=	"GNU m4"

DISTNAME=	m4-1.4
CATEGORIES=	devel
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_GNU:=m4/}

HOMEPAGE=	http://www.gnu.org/software/m4/

MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest old
CONFIGURE_ARGS=	--program-prefix="g"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gm4
	${INSTALL_DATA} ${WRKSRC}/examples/*.m4 ${PREFIX}/share/examples/gm4

.include <bsd.port.mk>
