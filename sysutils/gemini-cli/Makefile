COMMENT=		Gemini AI agent CLI

V=			0.28.2
DISTNAME=		gemini-cli-${V}

CATEGORIES=		sysutils misc devel

HOMEPAGE=		https://geminicli.com/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

SITES=			https://distfiles.bsdfrog.org/

BUILD_DEPENDS=		lang/node

RUN_DEPENDS=		lang/node \
			shells/bash

# see https://geminicli.com/docs/get-started/configuration/
# tools.useRipgrep: true (Default)
RUN_DEPENDS +=		textproc/ripgrep

NO_TEST=		Yes

DWRKDIR !=		echo $${TMPDIR:-/tmp}/gemini-cli-$${RANDOM}
DWRKDIST=		${DWRKDIR}/${DISTNAME}

package.json:
	@if [ ! -f ${FILESDIR}/package-lock.json ]; then \
		install -d ${DWRKDIST} ; \
		echo '{"name":"gemini-cli-installer","version":"1.0.0"}' \
			>${DWRKDIR}/package.json ; \
		cd ${DWRKDIR} && \
			npm install --package-lock-only --install-strategy=shallow \
			--legacy-peer-deps @google/gemini-cli@${V} ; \
	fi

# needs lang/node
tarball: package.json
	@cp ${DWRKDIR}/package-lock.json ${DWRKDIST}/package-lock.json
	@echo '{"name":"gemini-cli-installer","version":"1.0.0","dependencies":{"@google/gemini-cli":"^${V}"}}' \
		>${DWRKDIST}/package.json
	@cd ${DWRKDIST} && \
		${SETENV} HOME=${DWRKDIR} npm ci --ignore-scripts \
			--install-strategy=shallow --legacy-peer-deps --omit=dev
	@install -d ${DWRKDIST}/{bin,lib/node_modules/@google}
	@mv ${DWRKDIST}/node_modules/@google/gemini-cli \
		${DWRKDIST}/lib/node_modules/@google/
	@ln -s ../lib/node_modules/@google/gemini-cli/dist/index.js \
		${DWRKDIST}/bin/gemini
	@rm -r ${DWRKDIST}/{node_modules,package.json,package-lock.json}
	@cd ${DWRKDIR} && tar czf ${DISTNAME}${EXTRACT_SUFX} ${DISTNAME}
	@echo "===> distfile available at:"
	@echo ${DWRKDIR}/${DISTNAME}${EXTRACT_SUFX}

do-build:
# build native modules for node-pty
	@cd ${WRKSRC}/lib/node_modules/@google/gemini-cli/node_modules/node-pty
	${SETENV} HOME=${WRKDIR} CFLAGS="-I${LOCALBASE}/include" \
		CXXFLAGS="-I${LOCALBASE}/include" \
		npm rebuild --nodedir=${LOCALBASE}

do-install:
	cp -a ${WRKSRC}/* ${PREFIX}
	chmod +x ${PREFIX}/lib/node_modules/@google/gemini-cli/dist/index.js

.include <bsd.port.mk>
