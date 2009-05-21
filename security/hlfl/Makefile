# $OpenBSD: Makefile,v 1.11 2009/05/21 10:16:59 benoit Exp $

COMMENT =		high level firewall language

DISTNAME =		hlfl-0.60.1
CATEGORIES =   		security lang

HOMEPAGE =		http://www.hlfl.org/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes 
PERMIT_PACKAGE_FTP =	Yes 
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c

MASTER_SITES =		http://www.hlfl.org/hlfl/ \
			ftp://ftp.hlfl.org/pub/hlfl/ \
			ftp://ftp.hlfl.org/pub/hlfl/old/

FAKE_FLAGS =		prefix=${PREFIX} \
			datadir=${PREFIX}/share/examples/hlfl \
			mandir=${PREFIX}/man

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

NO_REGRESS =		Yes

pre-install:
	@perl -pi -e 's#\$${prefix}\/share\/hlfl\/services\.hlfl#${SYSCONFDIR}/services.hlfl#' ${WRKSRC}/doc/hlfl.1
	@perl -pi -e 's#\$${prefix}\/share#${PREFIX}/share/examples#' ${WRKSRC}/doc/hlfl.1

.include <bsd.port.mk>
