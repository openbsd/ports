COMMENT=	set file modification times to internal RPKI timestamps

GH_ACCOUNT=	job
GH_PROJECT=	rpkitouch
GH_TAGNAME=	v1.4

CATEGORIES=	net

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/rpkitouch ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rpkitouch.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
