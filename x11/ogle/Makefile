# $OpenBSD: Makefile,v 1.7 2002/03/17 20:05:07 brad Exp $

ONLY_FOR_ARCHS=	alpha i386 powerpc sparc64

CATEGORIES=	x11
NEED_VERSION=	1.500

COMMENT=	"DVD player"
DISTNAME=	ogle-0.8.2
HOMEPAGE=	http://www.dtek.chalmers.se/groups/dvd/
# Authors can be reached at dvd@dtek.chalmers.se
MASTER_SITES=	${HOMEPAGE}dist/

MAINTAINER=	Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE=	gnu

# GPL
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes

BUILD_DEPENDS=	::audio/liba52

LIB_DEPENDS=	dvdread::devel/libdvdread \
		xml2::textproc/libxml \
		jpeg.62::graphics/jpeg

.if ${MACHINE_ARCH} == "i386"
.  if exists(/usr/bin/as-static)
pre-build:
	ln -sf /usr/bin/as-static ${WRKDIR}/as
.  else
# i386 gas is currently ancient... but we can trick binutils into
# building a gas with only static binary support that will be enough
# for our purposes
.include <bsd.own.mk>
BSDSRCDIR?=/usr/src
BINUTILS=${BSDSRCDIR}/gnu/usr.bin/binutils
BINOBJ=${WRKDIR}/binutils

post-extract:
	@test -f  ${BINUTILS}/Makefile.bsd-wrapper || \
		{ echo >&2 "You must have binutils sources to build this"; \
		echo >&2 "Please make sure the ${BINUTILS} dir is populated and retry"; \
		exit 1; }
	@mkdir -p ${BINOBJ}

post-configure:
	@cd ${BINOBJ} && PATH="/bin:/usr/bin:/sbin:/usr/sbin" \
	    sh ${BINUTILS}/configure \
	    --disable-nls --disable-gdbtk --disable-commonbfdlib
	@cd ${BINOBJ} && \
	    sed -e 's,SUBDIRS *=,SUBDIRS ?=,' <Makefile >Makefile.tmp && \
	    mv -f Makefile.tmp Makefile

pre-build:
	@cd ${BINOBJ} && SUBDIRS='opcodes bfd gas' make ALL_MODULES='all-opcodes all-bfd all-gas' ALL_X11_MODULES='' 
	@ln -sf ${BINOBJ}/gas/as-new  ${WRKDIR}/as
.  endif
.endif

MAKE_ENV=WRKDIR=${WRKDIR}

.include <bsd.port.mk>
