# $OpenBSD: Makefile.inc,v 1.12 2016/01/07 00:51:28 jeremy Exp $

SHARED_ONLY ?=	Yes

DISTNAME ?=	ruby-${VERSION}-p${PATCHLEVEL}

CATEGORIES ?=	lang

HOMEPAGE ?=	http://www.ruby-lang.org/

MAINTAINER ?=	Jeremy Evans <jeremy@openbsd.org>

# GPL/Artistic/BSD/Public Domain/Beer-Ware
PERMIT_PACKAGE_CDROM ?= Yes
PERMIT_PACKAGE_FTP ?= Yes
PERMIT_DISTFILES_FTP ?= Yes

MASTER_SITES ?=	http://cache.ruby-lang.org/pub/ruby/${VERSION:R}/

CONFIGURE_STYLE ?=	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV +=	PREFIX="${PREFIX}" \
			CPPFLAGS="-DOPENSSL_NO_STATIC_ENGINE -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

REV ?=			${VERSION:R}
SUB ?=			${MACHINE_ARCH:S/amd64/x86_64/}-openbsd
SUBST_VARS +=		SUB REV
FILESDIR ?=		${.CURDIR}/../files

FIX_RBCONFIG ?=		sed 's/INSTALL_ARGS/-c -o ${BINOWN} -g ${BINGRP}/' < \
				${FILESDIR}/rbconfig_fix.rb >> \
				${PREFIX}/lib/ruby/${RUBYLIBREV}/${SUB}/rbconfig.rb

.if !target(post-install)
post-install:
	${FIX_RBCONFIG}
.endif
