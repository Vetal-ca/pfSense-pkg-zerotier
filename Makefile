# $FreeBSD$

PORTNAME=	pfSense-pkg-zerotier
PORTVERSION=	0.00.1
CATEGORIES=	net
MASTER_SITES=	# empty
DISTFILES=	# empty
EXTRACT_ONLY=	# empty

MAINTAINER=	grmoore18@gmail.com
COMMENT=	pfSense package zerotier

LICENSE=	APACHE20

RUN_DEPENDS=	${LOCALBASE}/sbin/zerotier-one:net/zerotier

NO_BUILD=	yes
NO_MTREE=	yes

SUB_FILES=	pkg-install pkg-deinstall
SUB_LIST=	PORTNAME=${PORTNAME}

do-extract:
	${MKDIR} ${WRKSRC}

do-install:
	${SH} ${WRKDIR}/pkg-install

do-deinstall:
	${SH} ${WRKDIR}/pkg-deinstall

.include <bsd.port.mk>