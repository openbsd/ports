# $OpenBSD: Makefile,v 1.16 2009/05/19 11:03:31 sthen Exp $

COMMENT=	Prelude manager

DISTNAME=	prelude-manager-0.9.9
PKGNAME=	${DISTNAME}p0

WANTLIB=	c gcrypt gnutls gpg-error m prelude preludedb pthread tasn1 z
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	xml2.>=9::textproc/libxml \
		preludedb.>=3.1::security/prelude/libpreludedb

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prelude-manager/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/prelude-manager/

.include <bsd.port.mk>
