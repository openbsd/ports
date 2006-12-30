# $OpenBSD: Makefile,v 1.10 2006/12/30 16:32:47 aanriot Exp $

COMMENT=	"Prelude log analyzer"

DISTNAME=	prelude-lml-0.9.8.1

WANTLIB=	c pthread z gcrypt gpg-error gnutls
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
