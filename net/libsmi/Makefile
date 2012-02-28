# $OpenBSD: Makefile,v 1.1.1.1 2012/02/28 19:26:22 nigel Exp $

COMMENT=	library and tools to access SMI MIB information

SHARED_LIBS +=  smi                  0.0      # 2.27

DISTNAME=	libsmi-0.4.8
CATEGORIES=	net

HOMEPAGE=	http://www.ibr.cs.tu-bs.de/projects/libsmi/

MAINTAINER=	Nigel Taylor <nigel@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m

MASTER_SITES=		ftp://ftp.ibr.cs.tu-bs.de/pub/local/libsmi/

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

S=			${PREFIX}/share/smi

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--mandir=${PREFIX}/man \
			--with-data-dir=${PREFIX}/share/smi \
			--with-mibdir=${PREFIX}/share/smi/mibs \
			--with-pibdir=${PREFIX}/share/smi/pibs \
			--with-smipath=/usr/share/snmp/mibs:$S/mibs/ietf:$S/mibs/iana:$S/mibs/irtf:$S/mibs/site:$S/mibs/tubs:$S/pibs/ietf:$S/pibs/site:$S/pibs/tubs

.include <bsd.port.mk>
