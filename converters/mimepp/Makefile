# $OpenBSD: Makefile,v 1.2 1998/10/08 03:35:18 marc Exp $
#

DISTNAME=		mimepp-1.0
CATEGORIES=		converters

NO_CDROM=		"LIC: obnoxious license"
RESTRICTED=		"many, many restrictions: read license"

MAINTAINER=		angelos@openbsd.org

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	devel/lang/c++

MAKEFILE=		makefile.unx
ALL_TARGET=		lib

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
	@ ${MKDIR} ${PREFIX}/include/mimepp
.for file in ${INCLUDE}
	@ ${INSTALL_DATA} ${WRKSRC}/mimepp/${file} ${PREFIX}/include/mimepp
.endfor
	@ ${MKDIR} ${PREFIX}/share/doc/mimepp
.for file in ${DOC}
	@ ${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/mimepp
.endfor
	@ ${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/mimepp
	@ ${MKDIR} ${PREFIX}/share/examples/mimepp
	@ ${INSTALL_DATA} ${FILESDIR}/Makefile ${PREFIX}/share/examples/mimepp
.for file in ${EXAMPLES}
	@ ${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/examples/mimepp
.endfor

.include <bsd.port.mk>
