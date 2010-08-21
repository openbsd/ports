# $OpenBSD: Makefile,v 1.2 2010/08/21 19:17:55 ajacoutot Exp $

COMMENT=	simple shell based filters to use GnuPG within (Al)Pine

DISTNAME=	pine-pgp-filters-1.8
CATEGORIES=	mail security

HOMEPAGE=	http://dougbarton.us/PGP/ppf/index.html

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://dougbarton.us/PGP/ppf/

BUILD_DEPENDS=	:gnupg-<2:security/gnupg
RUN_DEPENDS=	:gnupg-<2:security/gnupg \
		::mail/alpine

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--gnupg=gpg

PKG_ARCH=	*
NO_REGRESS=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/out/ppf_* ${PREFIX}/libexec
	cd ${PREFIX}/bin && \
		ln -sf ../libexec/ppf_mime ppf_mime && \
		ln -sf ../libexec/ppf_mime_decrypt ppf_mime_decrypt
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pine-pgp-filters
	${INSTALL_DATA} ${WRKBUILD}/{INSTALL,README} \
		${PREFIX}/share/doc/pine-pgp-filters

.include <bsd.port.mk>
