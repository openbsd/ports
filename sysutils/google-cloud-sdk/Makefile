# $OpenBSD: Makefile,v 1.31 2016/08/25 07:17:38 ajacoutot Exp $

COMMENT=		manage resources on Google's Cloud Platform

V=			123.0.0
DISTNAME=		google-cloud-sdk-${V}-linux-x86
PKGNAME=		google-cloud-sdk-${V}
WRKDIST=		${WRKDIR}/google-cloud-sdk

CATEGORIES=		sysutils

HOMEPAGE=		https://developers.google.com/cloud/sdk

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://dl.google.com/dl/cloudsdk/release/downloads/

MODULES=		lang/python

RUN_DEPENDS=		devel/git

NO_TEST=		Yes

do-build:
# cannot set NO_BUILD=Yes because it would remove the dependency on python

pre-configure:
# wildcard, cannot use MODPY_ADJ_FILES
	find ${WRKSRC}/bin{,/bootstrapping}/* -type f -exec \
		${MODPY_BIN_ADJ} '{}' \+
	${SUBST_CMD} ${WRKSRC}/lib/googlecloudsdk/core/config.py \
		${WRKSRC}/bin/{bq,gcloud,git-credential-gcloud.sh,gsutil}

do-install:
	cp -Rp ${WRKSRC} ${PREFIX}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/google-cloud-sdk \
		${PREFIX}/share/zsh/vendor-completions \
		${PREFIX}/share/bash-completion/completions

	mv ${PREFIX}/google-cloud-sdk/help/man/man1/* ${PREFIX}/man/man1/
	mv ${PREFIX}/google-cloud-sdk/{LICENSE,README,RELEASE_NOTES} \
		${PREFIX}/share/doc/google-cloud-sdk
	mv ${PREFIX}/google-cloud-sdk/completion.bash.inc \
		${PREFIX}/share/bash-completion/completions/google-cloud-sdk
	mv ${PREFIX}/google-cloud-sdk/completion.zsh.inc \
		${PREFIX}/share/zsh/vendor-completions/_google-cloud-sdk

	rm -rf ${PREFIX}/google-cloud-sdk/{.install,install.{sh,bat},help}
	rm -rf ${PREFIX}/google-cloud-sdk/path.{bash,zsh}.inc

	find ${PREFIX} -type f \( -name '*.beforesubst' -or -name '*.orig' \) \
		-exec rm '{}' \+

	find ${PREFIX} -type d -name python3 -exec rm -rf '{}' \+
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/google-cloud-sdk/{lib,platform}

	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/google-cloud-sdk
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/google-cloud-sdk/bin
	chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man1

.include <bsd.port.mk>
