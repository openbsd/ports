# $OpenBSD: Makefile,v 1.10 1999/08/06 02:45:33 brad Exp $

DISTNAME=	hylafax-v4.0pl2
.if defined(A4)
PKGNAME=	hylafax-4.0.2-A4
.else
PKGNAME=	hylafax-4.0.2-letter
.endif
MASTER_SITES=	ftp://ftp.sgi.com/sgi/fax/source/
EXTRACT_SUFX=	-tar.gz

CATEGORIES=	comms

MAINTAINER=	d@openbsd.org

BUILD_DEPENDS=	${PREFIX}/lib/afm/Courier:${PORTSDIR}/print/afm
RUN_DEPENDS=	gs:${PORTSDIR}/print/ghostscript5
LIB_DEPENDS=	tiff.3.4:${PORTSDIR}/graphics/tiff34 

USE_EGCC=	yes
USE_EGXX=	yes

.if !defined(A4)
PAGESIZE=	North American Letter
.else
PAGESIZE=	ISO A4
.endif

FAXUID=	uucp
FAXGID=	dialer

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-INSTALL="" \
		--with-MAKE=${MAKE} \
		--with-CC=${CC} \
		--with-CXX=${CXX} \
		--with-DIR_HTML=/usr/share/doc/html/hylafax \
		--with-PAGESIZE="${PAGESIZE}" \
		--with-LIBTIFF="-L${PREFIX}/lib -ltiff"  \
		--with-ZLIB=no --with-LIBZ='-lz' --with-ZLIBINC=/usr/include \
		--with-REGEX=no --with-LIBREGEX= --with-REGEXINC=/usr/include \
		--with-FAXUID=${FAXUID} --with-FAXGID=${FAXGID} \

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
	/usr/sbin/chown ${FAXUID}.${FAXGID} ${SUID_EXES}
	chmod a=rx,u+s ${SUID_EXES}
	${INSTALL_DATA} ${FILESDIR}/hylafax.sh.sample ${PREFIX}/lib/fax
	@${CAT} ${PKGDIR}/MESSAGE

.include <bsd.port.mk>
