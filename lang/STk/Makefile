# $OpenBSD: Makefile,v 1.12 2002/03/13 22:15:59 pvalchev Exp $

COMMENT=	"scheme interpreter with Tk interface"

STK_VERSION=		3.1.1
STK_ARCH=		$(OPSYS)-$(OPSYS_VER)-$(MACHINE)
DISTNAME=       STk-${STK_VERSION}
CATEGORIES=	lang
NEED_VERSION=	1.402
MASTER_SITES=	ftp://kaolin.unice.fr/pub/STk/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=gnu dest

.if (${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "arc" || \
${MACHINE_ARCH} == "pmax" || ${MACHINE_ARCH} == "powerpc")
CONFIGURE_ARGS+= --disable-dynload
NO_SHARED_LIBS=	Yes
.endif

post-build:
	@cd ${WRKSRC} && mv config.make config.make.org && \
		sed -e 's,${PREFIX},$${DESTDIR}${PREFIX},' \
		    <config.make.org >config.make
SUBST_VARS=STK_VERSION STK_ARCH

# fix badlink postinstall-wise
post-install:
.for i in stk-${STK_VERSION} snow-${STK_VERSION} stk snow
	k=`readlink ${PREFIX}/bin/$i|sed -e 's,${WRKINST},,'`; echo $$k; ln -sf $$k ${PREFIX}/bin/$i
.endfor

.include <bsd.port.mk>
