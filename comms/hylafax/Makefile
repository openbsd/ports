# $OpenBSD: Makefile,v 1.25 2000/10/22 14:02:59 espie Exp $

BROKEN=		"Security hole (buffer overflow yielding setuid uucp)"

DISTNAME=	hylafax-v4.0pl2
.if defined(A4)
PKGNAME=	hylafax-4.0.2-A4
.else
PKGNAME=	hylafax-4.0.2-letter
.endif

CATEGORIES=	comms
NEED_VERSION=	 1.230
FAKE=No
MASTER_SITES=	ftp://ftp.sgi.com/sgi/fax/source/ \
		ftp://ftp.leo.org/pub/comp/os/unix/networking/fax/hylafax/source/ \
		ftp://ftp.sisis.de/pub/hylafax/source/
MASTER_SITES0=	http://www.hylafax.org/patches/
EXTRACT_SUFX=	-tar.gz

PATCHFILES=	gcc-2.8.x.patch:0
PATCH_DIST_STRIP= -p1

MAINTAINER=	David Leonard <d@openbsd.org>

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

BUILD_DEPENDS=	${PREFIX}/lib/afm/Courier::print/afm
RUN_DEPENDS=	gs::print/ghostscript/gnu
LIB_DEPENDS=	tiff.35::graphics/tiff

USE_GMAKE=	Yes

.if !defined(A4)
PAGESIZE=	North American Letter
.else
PAGESIZE=	ISO A4
.endif

FAXUID=	uucp
FAXGID=	dialer

HAS_CONFIGURE=	Yes
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
	@chown ${FAXUID}.${FAXGID} ${SUID_EXES}
	@chmod a=rx,u+s ${SUID_EXES}
	${INSTALL_DATA} ${FILESDIR}/hylafax.sh.sample ${PREFIX}/lib/fax

.include <bsd.port.mk>
