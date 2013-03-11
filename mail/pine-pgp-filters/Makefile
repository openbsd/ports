# $OpenBSD: Makefile,v 1.8 2013/03/11 11:23:53 espie Exp $

COMMENT=	simple shell based filters to use GnuPG within (Al)Pine

DISTNAME=	pine-pgp-filters-1.8
REVISION=	2
CATEGORIES=	mail security

HOMEPAGE=	http://dougbarton.us/PGP/ppf/index.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://dougbarton.us/PGP/ppf/

BUILD_DEPENDS=	security/gnupg
RUN_DEPENDS=	security/gnupg \
		mail/re-alpine,-main

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
