# $OpenBSD: Makefile,v 1.27 2002/10/04 18:06:28 brad Exp $

COMMENT=	"GNU make"

DISTNAME=	make-3.80
PKGNAME=	g${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=make/}

HOMEPAGE=	http://www.gnu.org/software/make/

MODULES=	gettext

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --program-prefix="g"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		MAKEINFO="makeinfo --no-split"

# XXX workaround sparc64 gcc optimization bug where gmake built
# with optimization level > 0 would get random sig11's.
.if ${MACHINE_ARCH:Msparc64}
CFLAGS+=	-O0
.endif

post-extract:
	@rm -f ${WRKSRC}/doc/make.info*

post-install:
	@chmod ${BINMODE} ${PREFIX}/bin/gmake
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/gmake

# XXX This is the ONE case where we shouldn't be able to cheat on 
# where HOME is coming from, but we can. Looks like gnu-make is bogus...

REGRESS_FLAGS=HOME=/

.include <bsd.port.mk>
