# $OpenBSD: Makefile,v 1.8 2006/10/06 08:22:27 aanriot Exp $

COMMENT=	"Prelude manager"

DISTNAME=	prelude-manager-0.9.6.1

WANTLIB=	c gcrypt gnutls gpg-error m prelude preludedb pthread z
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	xml2.>=9::textproc/libxml \
		preludedb.>=3.1::security/prelude/libpreludedb

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prelude-manager/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/prelude-manager/

.include <bsd.port.mk>
