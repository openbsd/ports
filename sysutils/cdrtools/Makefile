# $OpenBSD: Makefile,v 1.1.1.1 2002/05/13 14:08:50 naddy Exp $

COMMENT=		"ISO 9660 filesystem and CD creation tools"

DISTNAME=		cdrtools-1.10
CATEGORIES=		sysutils
NEED_VERSION=		1.522
HOMEPAGE=		http://www.fokus.gmd.de/research/cc/glone/employees/joerg.schilling/private/cdrecord.html

MAINTAINER=		Jacob Meuser <jakemsr@jakemsr.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.fokus.gmd.de/pub/unix/cdrecord/

USE_GMAKE=		Yes

FAKE_FLAGS=		INS_BASE=${WRKINST}${PREFIX} \
			INSUSR=${BINOWN} \
			INSGRP=${BINGRP} \
			INSMODEX=${BINMODE} \
			INSMODEF=${SHAREMODE} \
			MANSECT=man1 \
			MANSUFFIX=1

MAKE_ENV=		MAKEPROG=${MAKE_PROGRAM} \
			CCOM=${CC}

NO_REGRESS=		Yes

.if ${MACHINE} != "i386" || ${CC} != "cc"
do-configure:
	@ln -sf ${WRKSRC}/RULES/i386-openbsd-cc.rul \
		${WRKSRC}/RULES/${MACHINE}-openbsd-${CC}.rul
.endif

post-install:
	@strip ${PREFIX}/bin/* 
	@cd ${PREFIX}/man/man1; \
		for i in devdump.1 isovfy.1 ; do \
			ln -s isoinfo.1 $$i ; \
		done

.include <bsd.port.mk>
