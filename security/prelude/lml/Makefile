# $OpenBSD: Makefile,v 1.14 2009/05/19 11:03:31 sthen Exp $

COMMENT=	Prelude log analyzer

DISTNAME=	prelude-lml-0.9.10
PKGNAME=	${DISTNAME}p0

WANTLIB=	c gcrypt gnutls gpg-error pthread tasn1 z
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	pcre.>=1::devel/pcre \
		prelude.>=7::security/prelude/libprelude

CONFIGURE_ARGS=	--disable-unsupported-rulesets

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prelude-lml/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/prelude-lml/

.include <bsd.port.mk>
