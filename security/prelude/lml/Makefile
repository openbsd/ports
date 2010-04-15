# $OpenBSD: Makefile,v 1.16 2010/04/15 14:58:24 ajacoutot Exp $

COMMENT=	Prelude log analyzer

DISTNAME=	prelude-lml-0.9.15
PKGNAME=	${DISTNAME}p0

WANTLIB=	c gcrypt gnutls gpg-error m tasn1 z
MODULES=	devel/gettext

MASTER_SITES=	http://www.prelude-ids.com/download/releases/prelude-lml/

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	pcre.>=1::devel/pcre \
		prelude.>=7::security/prelude/libprelude

CONFIGURE_ARGS=	--disable-unsupported-rulesets

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prelude-lml/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/prelude-lml/

.include <bsd.port.mk>
