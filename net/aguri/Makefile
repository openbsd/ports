# $OpenBSD: Makefile,v 1.3 2004/05/07 15:28:31 naddy Exp $
COMMENT=		"aggregation-based network traffic profiler"

DISTNAME=		aguri-0.7
CATEGORIES=		net

HOMEPAGE=		http://www.csl.sony.co.jp/person/kjc/software.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.csl.sony.co.jp/pub/kjc/

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

post-install:
		${INSTALL_SCRIPT_DIR} ${PREFIX}/share/aguri/
.for script in README agurify.pl density.pl makeplot.pl
		${INSTALL_SCRIPT} ${WRKDIST}/scripts/${script} \
			${PREFIX}/share/aguri
.endfor

NO_REGRESS=		Yes

.include <bsd.port.mk>
