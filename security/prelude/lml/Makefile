# $OpenBSD: Makefile,v 1.17 2010/09/01 06:50:56 ajacoutot Exp $

COMMENT=	Prelude log analyzer

DISTNAME=	prelude-lml-0.9.15
REVISION=	1

WANTLIB=	c gcrypt gnutls gpg-error m tasn1 z pcre prelude

MODULES=	devel/gettext

MASTER_SITES=	http://www.prelude-ids.com/download/releases/prelude-lml/

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	::devel/pcre \
		::security/prelude/libprelude

CONFIGURE_ARGS=	--disable-unsupported-rulesets

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prelude-lml/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/prelude-lml/

.include <bsd.port.mk>
