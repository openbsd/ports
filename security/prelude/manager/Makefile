# $OpenBSD: Makefile,v 1.21 2010/10/18 21:41:47 espie Exp $

COMMENT=	Prelude manager

DISTNAME=	prelude-manager-0.9.15
REVISION=	0

MASTER_SITES=	http://www.prelude-ids.com/download/releases/prelude-manager/

WANTLIB += c gcrypt gnutls gpg-error m prelude preludedb pthread tasn1 z
WANTLIB += xml2 preludedb

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

LIB_DEPENDS=	::textproc/libxml \
		::security/prelude/libpreludedb

# XXX check on update whether this is still necessary
post-extract:
	${INSTALL} -m 555 ${FILESDIR}/libgnutls-config ${WRKDIR}/bin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prelude-manager/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/prelude-manager/

.include <bsd.port.mk>
