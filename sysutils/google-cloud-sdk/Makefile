# $OpenBSD: Makefile,v 1.174 2020/06/28 13:55:50 ajacoutot Exp $

COMMENT=		manage resources on Google Cloud Platform

V=			298.0.0
DISTNAME=		google-cloud-sdk-${V}-linux-x86
PKGNAME=		google-cloud-sdk-${V}
WRKDIST=		${WRKDIR}/google-cloud-sdk
REVISION=		0

CATEGORIES=		sysutils

HOMEPAGE=		https://cloud.google.com/sdk/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MASTER_SITES=		https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/

MODULES=		lang/python

MODPY_BUILDDEP=		Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

MODPY_ADJ_FILES=	bin/dev_appserver.py \
			bin/endpointscfg.py \
			bin/bootstrapping/install.py \
			bin/bootstrapping/gsutil.py \
			bin/bootstrapping/bq.py

NO_BUILD=		Yes
NO_TEST=		Yes

RUN_DEPENDS=		devel/git

do-install:
	cp -Rp ${WRKSRC} ${PREFIX}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/google-cloud-sdk \
		${PREFIX}/share/zsh/vendor-completions \
		${PREFIX}/share/bash-completion/completions

	mv ${PREFIX}/google-cloud-sdk/{LICENSE,README,RELEASE_NOTES} \
		${PREFIX}/share/doc/google-cloud-sdk
	mv ${PREFIX}/google-cloud-sdk/completion.bash.inc \
		${PREFIX}/share/bash-completion/completions/google-cloud-sdk
	mv ${PREFIX}/google-cloud-sdk/completion.zsh.inc \
		${PREFIX}/share/zsh/vendor-completions/_google-cloud-sdk

	rm -r ${PREFIX}/google-cloud-sdk/.install \
		${PREFIX}/google-cloud-sdk/path.{bash,zsh}.inc \
		${PREFIX}/google-cloud-sdk/{deb,rpm}

	find ${PREFIX} -type f \( -name '*.bat' -or -name '*.orig' \) \
		-exec rm '{}' \+

# enforce python3 dependency
	find ${PREFIX} -type d -name python2 -exec rm -rf '{}' \+

# XXX ||true: ignore error due to some old python2 syntax still around (unused)
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/google-cloud-sdk/{lib,platform} || true

	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/google-cloud-sdk
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/google-cloud-sdk/bin
	chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man1

.for _bin in bq gcloud git-credential-gcloud.sh gsutil
	ln -s ${TRUEPREFIX}/google-cloud-sdk/bin/${_bin} \
		${PREFIX}/bin/${_bin}
.endfor

.include <bsd.port.mk>
