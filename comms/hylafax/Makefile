# $OpenBSD: Makefile,v 1.12 1999/10/28 07:43:36 turan Exp $

BROKEN=		bad packing lists

DISTNAME=	hylafax-v4.0pl2
.if defined(A4)
PKGNAME=	hylafax-4.0.2-A4
.else
PKGNAME=	hylafax-4.0.2-letter
.endif
CATEGORIES=	comms
MASTER_SITES=	ftp://ftp.sgi.com/sgi/fax/source/ \
		ftp://ftp.leo.org/pub/comp/os/unix/networking/fax/hylafax/source/ \
		ftp://ftp.sisis.de/pub/hylafax/source/
EXTRACT_SUFX=	-tar.gz

PATCH_SITES=	http://www.hylafax.org/patches/
PATCHFILES=	gcc-2.8.x.patch
PATCH_DIST_STRIP= -p1

MAINTAINER=	d@openbsd.org

BUILD_DEPENDS=	${PREFIX}/lib/afm/Courier:${PORTSDIR}/print/afm
RUN_DEPENDS=	gs:${PORTSDIR}/print/ghostscript5
LIB_DEPENDS=	tiff.3.4:${PORTSDIR}/graphics/tiff34

USE_EGCC=	yes
USE_EGXX=	yes
USE_GMAKE=	yes

.if !defined(A4)
PAGESIZE=	North American Letter
.else
PAGESIZE=	ISO A4
.endif

FAXUID=	uucp
FAXGID=	dialer

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-INSTALL="" \
		--with-MAKE="${GMAKE}" \
		--with-CC="${CC}" \
		--with-CXX="${CXX}" \
		--with-DIR_HTML="/usr/share/doc/html/hylafax" \
		--with-PAGESIZE="${PAGESIZE}" \
		--with-LIBTIFF="-L${PREFIX}/lib -ltiff"  \
		--with-TIFFINC="${PREFIX}/include" \
		--with-ZLIB="no" --with-LIBZ="-lz" --with-ZLIBINC="/usr/include" \
		--with-REGEX="no" --with-LIBREGEX="" --with-REGEXINC="/usr/include" \
		--with-FAXUID="${FAXUID}" --with-FAXGID="${FAXGID}" \

CONFIGURE_ENV=	CONFIG_SOCKARGLENTYPE=::socklen_t

SUID_EXES=	${PREFIX}/sbin/faxgetty ${PREFIX}/sbin/faxq \
		${PREFIX}/bin/faxrm ${PREFIX}/bin/faxalter

pre-fetch:
.if !defined(NO_WARNINGS)
.if !defined(A4)
	@${ECHO_MSG} "Type \"make A4=yes\" if you want A4 as default page size."
.else
	@${ECHO_MSG} "Using \"ISO A4\" for default page size."
.endif
.endif

post-install:
	@${CHOWN} ${FAXUID}.${FAXGID} ${SUID_EXES}
	@${CHMOD} a=rx,u+s ${SUID_EXES}
	${INSTALL_DATA} ${FILESDIR}/hylafax.sh.sample ${PREFIX}/lib/fax

.include <bsd.port.mk>
