# $OpenBSD: Makefile,v 1.10 2019/07/12 20:47:36 sthen Exp $

COMMENT=	simple shell based filters to use GnuPG within (Al)Pine

DISTNAME=	pine-pgp-filters-1.8
REVISION=	3
CATEGORIES=	mail security

HOMEPAGE=	http://dougbarton.us/PGP/ppf/index.html

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://dougbarton.us/PGP/ppf/

BUILD_DEPENDS=	security/gnupg
RUN_DEPENDS=	security/gnupg \
		mail/alpine,-main

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--gnupg=gpg

PKG_ARCH=	*
NO_TEST=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/out/ppf_* ${PREFIX}/libexec
	cd ${PREFIX}/bin && \
		ln -sf ../libexec/ppf_mime ppf_mime && \
		ln -sf ../libexec/ppf_mime_decrypt ppf_mime_decrypt
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pine-pgp-filters
	${INSTALL_DATA} ${WRKBUILD}/{INSTALL,README} \
		${PREFIX}/share/doc/pine-pgp-filters

.include <bsd.port.mk>
