# $OpenBSD: Makefile,v 1.1.1.1 2001/07/13 02:27:16 fgsch Exp $

COMMENT=	"Unix-to-Unix Copy Program"

DISTNAME=	uucp-1.06.2
CATEGORIES=	net
NEED_VERSION=	1.420
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= uucp

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/uucp-1.06.1

CONFIGURE_STYLE= gnu dest old

MAKE_FLAGS+=	bindir='$${PREFIX}/bin' \
		sbindir='$${PREFIX}/libexec/uucp' \
		newconfigdir=/etc/uucp \
		oldconfigdir=/etc/uucp \
		MAKEINFO='makeinfo --no-split'

FAKE_FLAGS+=	${MAKE_FLAGS}

post-install:
	@cd ${WRKDIST}/doc && rm -f uucp.info* 
	@cd ${WRKDIST} && ${MAKE} ${MAKE_FLAGS} install-info
	@mv ${PREFIX}/libexec/uucp/uusched ${PREFIX}/bin

.include <bsd.port.mk>
