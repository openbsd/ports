# $OpenBSD: Makefile,v 1.8 1999/02/21 04:26:13 marc Exp $
#

DISTNAME=	expect
PKGNAME=	expect-5.26
CATEGORIES=	lang tcl80 tk80

NEED_VERSION=	1.64

MAINTAINER=	niklas@openbsd.org

# Expect is now at 5.27, un-comment when port updated
#MASTER_SITES=	http://expect.nist.gov/

LIB_DEPENDS=	tk80\\.1:${PORTSDIR}/x11/tk80

WRKSRC=		${WRKDIR}/expect-5.26

GNU_CONFIGURE=	yes
CONFIGURE_ARGS= --with-tclconfig=${PREFIX}/lib/tcl8.0 \
		--with-tclinclude=${PREFIX}/include/tcl8.0 \
		--with-tkconfig=${PREFIX}/lib/tk8.0 \
		--with-tkinclude=${PREFIX}/include/tk8.0
.if !defined(NO_SHARED_LIBS)
CONFIGURE_ARGS+=--enable-shared
.endif

# needed for japanese/expect
.if !defined(NO_MAN_INSTALL)
MAN1=		autoexpect.1 cryptdir.1 decryptdir.1 dislocate.1 \
		expect.1 expectk.1 kibitz.1 mkpasswd.1 passmass.1 \
		tknewsbiff.1 unbuffer.1 xkibitz.1
MAN3=		libexpect.3
.endif

test:
	@(cd ${WRKSRC}; make test)

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
