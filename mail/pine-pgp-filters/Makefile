# $OpenBSD: Makefile,v 1.1.1.1 2008/03/15 10:59:46 ajacoutot Exp $

COMMENT=	simple shell based filters to use GnuPG within (Al)Pine

DISTNAME=	pine-pgp-filters-1.6
CATEGORIES=	mail security

HOMEPAGE=	http://dougbarton.us/PGP/scripts/ppf/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	::security/gnupg
RUN_DEPENDS=	::security/gnupg \
		::mail/alpine

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix=${PREFIX}

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
