# $OpenBSD: Makefile,v 1.26 2002/09/29 01:31:06 naddy Exp $

COMMENT=	"GNU Bourne Again Shell"

DISTNAME=	bash-2.05b
CATEGORIES=	shells
HOMEPAGE=	http://cnswww.cns.cwru.edu/~chet/bash/bashtop.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}
MASTER_SITES0=	ftp://ftp.cwru.edu/pub/bash/bash-2.05b-patches/ \
		${MASTER_SITE_FREEBSD_LOCAL:=obrien/}
DISTFILES=	${DISTNAME}.tar.gz ${DISTNAME:S/-/-doc-/}.tar.gz
.for i in 001 002 003 004
PATCHFILES+=	bash205b-${i}:0
.endfor

FLAVORS=	static
FLAVOR?=

SEPARATE_BUILD=	concurrent

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/support

.if ${FLAVOR:L} == "static"
CONFIGURE_ARGS=	--enable-static-link
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bash
	cd ${WRKDIR}/doc && \
	    ${INSTALL_DATA} article.ps article.txt bash.html bash.ps \
		bashbug.ps bashref.html bashref.ps builtins.ps  \
		${PREFIX}/share/doc/bash

.include <bsd.port.mk>
