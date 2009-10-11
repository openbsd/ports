# $OpenBSD: Makefile,v 1.18 2009/10/11 13:11:45 ajacoutot Exp $

COMMENT=	Prelude manager

DISTNAME=	prelude-manager-0.9.15

MASTER_SITES=	http://www.prelude-ids.com/download/releases/prelude-manager/

WANTLIB=	c gcrypt gnutls gpg-error m prelude preludedb pthread tasn1 z
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	xml2.>=9::textproc/libxml \
		preludedb.>=4.9::security/prelude/libpreludedb

post-extract:
	${INSTALL} -m 555 ${FILESDIR}/libgnutls-config ${WRKDIR}/bin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prelude-manager/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/prelude-manager/

.include <bsd.port.mk>
