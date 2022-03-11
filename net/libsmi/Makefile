COMMENT=	library/tools (incl smilint) to access SMI MIB information

SHARED_LIBS +=  smi                  0.0      # 2.27

DISTNAME=	libsmi-0.4.8
REVISION=	2
CATEGORIES=	net

HOMEPAGE=	https://www.ibr.cs.tu-bs.de/projects/libsmi/

MAINTAINER=	Nigel Taylor <nigel@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c m

MASTER_SITES=		https://www.ibr.cs.tu-bs.de/projects/libsmi/download/

USE_GMAKE=		Yes

S=			${PREFIX}/share/smi

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-data-dir=${PREFIX}/share/smi \
			--with-mibdir=${PREFIX}/share/smi/mibs \
			--with-pibdir=${PREFIX}/share/smi/pibs \
			--with-smipath=/usr/share/snmp/mibs:$S/mibs/ietf:$S/mibs/iana:$S/mibs/irtf:$S/mibs/site:$S/mibs/tubs:$S/pibs/ietf:$S/pibs/site:$S/pibs/tubs
CONFIGURE_ENV=		MKDIR_P="/bin/mkdir -p"

.include <bsd.port.mk>
