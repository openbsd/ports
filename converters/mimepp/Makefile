# $OpenBSD: Makefile,v 1.8 2000/10/22 14:03:03 espie Exp $

DISTNAME=		mimepp-1.0
CATEGORIES=		converters
NEED_VERSION=		1.210

MAINTAINER=		Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	"restrictive non-commercial license"
PERMIT_PACKAGE_FTP=	"restrictive non-commercial license"
PERMIT_DISTFILES_CDROM=	"restrictive non-commercial license"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	devel/lang/c++

MAKE_FILE=		makefile.unx
ALL_TARGET=		lib
FAKE=			Yes

INCLUDE=	address.h addrlist.h binhex.h body.h bodypart.h boyermor.h \
		config.h datetime.h debug.h disptype.h entity.h enum.h \
		field.h fieldbdy.h group.h headers.h mailbox.h mboxlist.h \
		mechansm.h mediatyp.h message.h mimepp.h msgcmp.h msgid.h \
		nntp.h param.h pop.h protocol.h smtp.h string.h text.h  \
		token.h utility.h uuencode.h

DOC=		CPYRIGHT LICENSE README Tutorial

EXAMPLES=	attach.cpp attach.h basicmsg.cpp basicmsg.h exampl01.cpp \
		exampl01.txt exampl02.cpp exampl02.txt exampl03.cpp \
		exampl03.txt exampl04.cpp exampl04.txt exampl05.cpp \
		exampl05.txt multipar.cpp multipar.h

do-install:
	@ ${INSTALL_DATA} ${WRKSRC}/libmimepp.a ${PREFIX}/lib
	@ ${INSTALL_DATA_DIR} ${PREFIX}/include/mimepp
.for file in ${INCLUDE}
	@ ${INSTALL_DATA} ${WRKSRC}/mimepp/${file} ${PREFIX}/include/mimepp
.endfor
	@ ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mimepp
.for file in ${DOC}
	@ ${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/mimepp
.endfor
	@ ${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/mimepp
	@ ${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mimepp
	@ ${INSTALL_DATA} ${FILESDIR}/Makefile ${PREFIX}/share/examples/mimepp
.for file in ${EXAMPLES}
	@ ${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/examples/mimepp
.endfor

.include <bsd.port.mk>
