# $OpenBSD: node.port.mk,v 1.4 2013/11/05 16:21:26 abieber Exp $

# node module

CATEGORIES +=	lang/node

BUILD_DEPENDS +=	lang/node>=0.6.17p2
RUN_DEPENDS += 		lang/node>=0.6.17p2

.if ${CONFIGURE_STYLE:L:Mnpm}
.  if ${CONFIGURE_STYLE:L:Mext}
# Node C++ extensions are specific to an arch and are loaded as
# shared libraries, so set SHARED_ONLY and make sure PKG_ARCH=* is
# not set.
.    if defined(PKG_ARCH) && ${PKG_ARCH} == *
ERRORS +=	"Fatal: Should not have PKG_ARCH=* when compiling extensions"
.    endif
SHARED_ONLY =	Yes
# All node extensions appear to link against these libraries
WANTLIB +=	m stdc++ crypto pthread ssl z
.  else
# Node libraries that don't contain C++ extensions should run on
# any arch.
PKG_ARCH ?=	*
.  endif

# The npm package repository separates packages in different directories,
# so to eliminate duplication, you need to set the NPM_NAME and NPM_VERSION
# variables so it can use the correct DISTNAME and MASTER_SITES.
# The NPM_NAME is required anyway during the install tasks, so it may as
# well be used here.
DISTNAME ?=	${NPM_NAME}-${NPM_VERSION}
MASTER_SITES ?=	${MASTER_SITE_NPM}${NPM_NAME}/-/
EXTRACT_SUFX ?=	.tgz
PKGNAME ?=	node-${DISTNAME:S/^node-//}

MODNODE_BIN_NPM =	${LOCALBASE}/bin/npm
NPM_INSTALL_FILE =	${WRKDIR}/${DISTNAME}.tgz
NPM_TAR_DIR =		package
WRKDIST =		${WRKDIR}/${NPM_TAR_DIR}

.if ${CONFIGURE_STYLE:L:Mexpresso}
TEST_DEPENDS += devel/node-expresso
MODNODE_TEST_TARGET = \
	cd ${WRKDIST} && ${LOCALBASE}/bin/expresso;
.if !defined(do-test)
do-test:
	${MODNODE_TEST_TARGET}
.endif
.else
TEST_TARGET ?=	test
.endif

# List of npm package names to depend on.  Only necessary
# if the current port depends on other node ports.
MODNODE_DEPENDS ?=

# Link all dependencies first so that npm will install without complaining.
# Then rebuild the distfile, since it may contain local patches.
# Then use npm install to install the package to a local node_modules dir.
MODNODE_BUILD_TARGET = \
	cd ${WRKDIST} && find . -type f -name '*.orig'  -print0 | \
		xargs -r0 rm; \
	for dep in ${MODNODE_DEPENDS}; do \
		cd ${WRKDIR} && ${MODNODE_BIN_NPM} link $$dep; \
	done; \
	cd ${WRKDIR} && tar -zcf ${NPM_INSTALL_FILE} ${NPM_TAR_DIR}; \
	cd ${WRKDIR} && HOME=${WRKDIR} ${MODNODE_BIN_NPM} install \
		${NPM_INSTALL_FILE}

# Move just this package from the local node_modules dir to the global
# node_modules dir.  If there are any binaries in the package, create
# symlinks in the default PATH that point to them.
MODNODE_INSTALL_TARGET = \
	mkdir ${PREFIX}/lib/node_modules; \
	mv ${WRKDIR}/node_modules/${NPM_NAME} ${PREFIX}/lib/node_modules; \
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/node_modules; \
	if [ -d ${PREFIX}/lib/node_modules/${NPM_NAME}/bin ]; then \
		cd ${PREFIX}/lib/node_modules/${NPM_NAME}/bin && \
		for bin in *; do \
			ln -s ${TRUEPREFIX}/lib/node_modules/${NPM_NAME}/bin/$$bin \
				${PREFIX}/bin/$${bin%.js}; \
		done; \
	fi;

.  if !target(do-build)
do-build:
	${MODNODE_BUILD_TARGET}
.  endif
.  if !target(do-install)
do-install:
	${MODNODE_INSTALL_TARGET}
.  endif
.endif
