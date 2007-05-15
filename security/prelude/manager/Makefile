# $OpenBSD: Makefile,v 1.12 2007/05/15 10:56:55 msf Exp $

COMMENT=	"Prelude manager"

DISTNAME=	prelude-manager-0.9.7.2
PKGNAME=	${DISTNAME}p0

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
