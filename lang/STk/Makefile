# $OpenBSD: Makefile,v 1.8 2000/06/04 18:18:02 espie Exp $

VER=		3.1.1
DISTNAME=       STk-${VER}
CATEGORIES=	lang
MASTER_SITES=	ftp://kaolin.unice.fr/pub/STk/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'

.if (${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "arc" || \
${MACHINE_ARCH} == "pmax" || ${MACHINE_ARCH} == "powerpc")
CONFIGURE_ARGS+= --disable-dynload
.endif

PLIST=	${WRKDIR}/PLIST

post-build:
	@cd ${WRKSRC} && mv config.make config.make.org && \
		sed -e 's,${PREFIX},$${DESTDIR}${PREFIX},' \
		    <config.make.org >config.make
pre-install:
	@rm -f ${PLIST}
	@sed -e's:%%STK_VERSION%%:${VER}:' \
	     -e's:%%STK_ARCH%%:$(OPSYS)-$(OPSYS_VER)-$(MACHINE):' \
		${PLIST_ORIG} > ${PLIST}

# fix badlink postinstall-wise
post-install:
.for i in stk-${VER} snow-${VER} stk snow
	k=`readlink ${PREFIX}/bin/$i|sed -e 's,${WRKINST},,'`; echo $$k; ln -sf $$k ${PREFIX}/bin/$i
.endfor

.include <bsd.port.mk>

.if (defined(NO_SHARED_LIBS) && exists(${PKGDIR}/PLIST.template.noshared))
PLIST_ORIG=	${FILESDIR}/PLIST.template.noshared
.else
PLIST_ORIG=	${FILESDIR}/PLIST.template
.endif
